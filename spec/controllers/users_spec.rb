require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  describe 'POST #create' do
    context 'when a user with the same username already exists' do
      let!(:existing_user) { FactoryBot.create(:user, username: 'existing_user') }
      let(:user_params) { { user: { username: 'existing_user' } } }

      it 'returns the existing user' do
        post :create, params: user_params
        expect(response).to have_http_status(:ok)
        expect(JSON.parse(response.body)['id']).to eq(existing_user.id)
      end
    end

    context 'when a new user is created' do
      let(:user_params) { { user: { username: 'new_user' } } }

      it 'creates and returns the new user' do
        post :create, params: user_params
        expect(response).to have_http_status(:created)
        expect(User.count).to eq(1)
        expect(JSON.parse(response.body)['username']).to eq('new_user')
      end
    end
  end
end
