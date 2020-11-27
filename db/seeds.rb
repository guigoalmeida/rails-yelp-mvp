# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destruindo todos os registros de restaurante'
Restaurant.destroy_all
puts 'concluído'
puts 'Destruindo todos os registros de reviews'
Review.destroy_all
puts 'concluído'

puts 'vai começar o seed de restaurantes'

100.times do
  new_restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "restaurante criado - #{new_restaurant.name}  - Endereço #{new_restaurant.address}  - fone #{new_restaurant.phone_number} - categoria #{new_restaurant.category}"
end

puts 'criou todos os restaurantes'

puts 'vai começar o seed de reviews'

500.times do
  new_review = Review.create(
    content: Faker::Restaurant.review,
    rating: rand(0..5),
    restaurant_id: rand(Restaurant.first.id..Restaurant.last.id)
  )

  puts "review criado - #{new_review.content}   - rating #{new_review.rating}   - restaurant_id #{new_review.restaurant_id}"
end
