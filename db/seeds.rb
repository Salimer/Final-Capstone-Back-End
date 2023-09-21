# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create(username: 'user1')
user2 = User.create(username: 'user2')

item1 = Item.create(
  name: 'Harley Low Rider',
  image: 'https://www.harley-davidson.com/content/dam/h-d/images/product-images/bikes/motorcycle/2023/2023-low-rider-s/2023-low-rider-s-f57/360/2023-low-rider-s-f57-motorcycle-01.jpg',
  description: 'Descripción para Harley Low Rider',
  deposit: 2000,
  finance_fee: 100,
  option_to_purchase_fee: 50,
  total_amount_payable: 5000,
  duration: 36,
  removed: false
)

item2 = Item.create(
  name: 'Harley Fat Bob',
  image: 'https://www.harley-davidson.com/content/dam/h-d/images/product-images/bikes/motorcycle/2023/2023-fat-bob-114/2023-fat-bob-114-f85/360/2023-fat-bob-114-f85-motorcycle-01.jpg',
  description: 'Descripción para Harley Fat Bob',
  deposit: 3000,
  finance_fee: 150,
  option_to_purchase_fee: 75,
  total_amount_payable: 7500,
  duration: 48,
  removed: false
)

Reservation.create(user_id: user1.id, item_id: item1.id, city: 'New York')
Reservation.create(user_id: user2.id, item_id: item2.id, city: 'Los Angeles')