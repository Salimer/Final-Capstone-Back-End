require 'rails_helper'

RSpec.describe Api::V1::ReservationsController, type: :controller do
  describe 'GET #index' do
    it 'returns a list of reservations' do
      create_list(:reservation, 3) # Create three reservations for testing
      get :index
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body).size).to eq(3)
    end
  end

  describe 'GET #show' do
    let(:reservation) { create(:reservation) }

    it 'returns the reservation details' do
      get :show, params: { id: reservation.id }
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)['city']).to eq(reservation.city)
    end

    it 'returns a not found error for invalid reservation id' do
      get :show, params: { id: 'invalid_id' }
      expect(response).to have_http_status(:not_found)
      expect(JSON.parse(response.body)).to have_key('error')
    end
  end

  describe 'POST #create' do
    let(:user) { create(:user) }
    let(:item) { create(:item) }
    let(:valid_params) do
      {
        reservation: {
          user_id: user.id,
          item_id: item.id,
          city: 'New York'
        }
      }
    end

    it 'creates a new reservation' do
      post :create, params: valid_params
      expect(response).to have_http_status(:created)
      expect(Reservation.count).to eq(1)
    end

    it 'returns errors for invalid data' do
      post :create, params: { reservation: { city: '' } }
      expect(response).to have_http_status(:unprocessable_entity)
      #   expect(JSON.parse(response.body)).to have_key('errors')
    end
  end

  describe 'DELETE #destroy' do
    let!(:reservation) { create(:reservation) }

    it 'deletes the reservation' do
      expect { delete :destroy, params: { id: reservation.id } }.to change(Reservation, :count).by(-1)
      expect(response).to have_http_status(:no_content)
    end

    it 'returns a not found error for invalid reservation id' do
      delete :destroy, params: { id: 'invalid_id' }
      expect(response).to have_http_status(:not_found)
      expect(JSON.parse(response.body)).to have_key('error')
    end
  end

  describe 'GET #user_reservations' do
    let(:user) { create(:user) }

    it 'returns a list of reservations for a user' do
      create_list(:reservation, 3, user:) # Create three reservations for the user
      get :user_reservations, params: { user_id: user.id }
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body).size).to eq(3)
    end

    it 'returns a not found error for invalid user id' do
      get :user_reservations, params: { user_id: 'invalid_id' }
      expect(response).to have_http_status(:not_found)
      expect(JSON.parse(response.body)).to have_key('error')
    end
  end
end
