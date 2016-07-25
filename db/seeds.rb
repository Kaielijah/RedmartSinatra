require './models/user'
require './models/product'
# require './models/category'
# require './models/purchase'
require 'faker'

(0..10).each do |i|
  User.create(
  name: Faker::Name.name,
  email: Faker::Internet.email ,
  password: Faker::Internet.password,
  cc_number: Faker::Business.credit_card_number)
  address: Faker::Address.street_address
end

(0..10).each do |i|
  Product.create(
  name: Faker::Commerce.product_name,
  description: Faker::Lorem.sentence,
  price: Faker::Commerce.price
  )
end

#   (0..10).each do |i|
#   Category.create(
#   category_name: Faker::Commerce.product_name,
#   sub_category: 'Insert description here',
#   grocery: Faker::Commerce.department
#   )
#
# end
#   (0..10).each do |i|
#   Purchase.create(
#   user_id: rand(1..10),
#   products_id: rand(1..10),
#   status: 'Paid / not paid'
#   )
# end
#   (0..10).each do |i|
#   Brand.create(
#   product_id: rand(1..10),
#   product_name: Faker::Commerce.product_name,
#   product_category: Faker::Commerce.product_name,
#   product_cost_per_unit:Faker::Commerce.price,
#   product_supplier: Faker::Company.suffix,
#   description:'Insert description here'
#   )
