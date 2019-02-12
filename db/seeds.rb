# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 require 'faker'
10.times do
	city =City.create!(name:Faker::GameOfThrones.city,zip_code: Faker::Address.zip_code)
  user = User.new(first_name:Faker::GameOfThrones.character,last_name: Faker::Name.last_name, email: Faker::Internet.email, age:Faker::Number.between(20,50),description: Faker::HarryPotter.quote)
  user.city =city
  user.save
   
  gossip =Gossip.create(title:Faker::HarryPotter.location,content:Faker::GameOfThrones.quote)
  gossip.user =user
   gossip.save
   random =User.first
comment =Comment.create(gossip:gossip,user: random ,content:Faker::GameOfThrones.quote)
 
  tag = Tag.new(title:Faker::Friends.quote)
  tag.save
  tager =Tager.new
  tager.tag =tag
  tager.gossip =gossip
  tager.save
   
end
