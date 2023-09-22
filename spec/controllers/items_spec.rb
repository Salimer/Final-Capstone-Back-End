require 'rails_helper'

RSpec.describe Api::V1::ItemsController, type: :controller do
  describe 'GET #index' do
    it 'returns a list of items' do
      create_list(:item, 3) # Create three items for testing
      get :index
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body).size).to eq(3)
    end
  end

  describe 'GET #show' do
    let(:item) { create(:item) }

    it 'returns the item details' do
      get :show, params: { id: item.id }
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)['name']).to eq(item.name)
    end
  end

  describe 'POST #create' do
    let(:valid_params) do
      {
        item: {
          name: 'Test Item',
          description: 'Test description',
          deposit: 100,
          finance_fee: 10,
          option_to_purchase_fee: 5,
          total_amount_payable: 115,
          duration: 12
        }
      }
    end

    it 'creates a new item' do
      post :create, params: valid_params
      expect(response).to have_http_status(:created)
      expect(Item.count).to eq(1)
    end

    it 'returns errors for invalid data' do
      post :create, params: { item: { name: '' } }
      expect(response).to have_http_status(:unprocessable_entity)
      # expect(JSON.parse(response.body)).to have_key('errors')
    end
  end

  describe 'PUT #update' do
    let(:item) { create(:item) }
    let(:valid_params) { { item: { name: 'Updated Item' } } }

    it 'updates the item' do
      put :update, params: { id: item.id }.merge(valid_params)
      expect(response).to have_http_status(:ok)
      expect(item.reload.name).to eq('Updated Item')
    end

    it 'returns errors for invalid data' do
      put :update, params: { id: item.id, item: { name: '' } }
      expect(response).to have_http_status(:unprocessable_entity)
      # expect(JSON.parse(response.body)).to have_key('errors')
    end
  end

  describe 'DELETE #destroy' do
    let!(:item) { create(:item) }

    it 'deletes the item' do
      expect { delete :destroy, params: { id: item.id } }.to change(Item, :count).by(-1)
      expect(response).to have_http_status(:no_content)
    end
  end
end
