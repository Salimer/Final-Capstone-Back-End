# spec/factories/reservations.rb
FactoryBot.define do
  factory :reservation do
    user { create(:user) } # You may need to adjust this based on your associations
    item { create(:item) } # You may need to adjust this based on your associations
    city { 'New York' } # Example city value
  end
end
