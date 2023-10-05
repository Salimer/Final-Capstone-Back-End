# spec/factories/reservations.rb
FactoryBot.define do
  factory :reservation do
    user { create(:user) }
    item { create(:item) }
    city { 'New York' }
  end
end
