# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"


5.times do 
  seller = Seller.create(
    name: Faker::Name.name,        
    email: Faker::Internet.email
  )


  10.times do 
    Dog.create(
      name: Faker::Creature::Dog.name,
      price: Faker::Commerce.price,
      description: Faker::Creature::Dog.meme_phrase,
      breed: Faker::Creature::Dog.breed,
      seller_id: seller.id
      )
  end
    
  2.times do 
  Buyer.create(
    name: Faker::Name.name,  
    max_price: Faker::Commerce.price,
    phone: Faker::PhoneNumber.cell_phone,
    seller_id: seller.id
    )
  end
end

puts Seller.all.size
puts Dog.all.size
puts Buyer.all.size