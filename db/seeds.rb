# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Animal.destroy_all
User.destroy_all

PICTURES = [
  "https://images.unsplash.com/photo-1558618047-f4b511aae74d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1573865526739-10659fec78a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=958&q=80",
  "https://images.unsplash.com/photo-1573433618812-f612e727b7d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "https://images.unsplash.com/photo-1573761691575-2c10f2554119?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1565194481104-39d1ee1b8bcc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1569031089355-8273719dcf2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1569576231685-8a0bb772d2f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "https://images.unsplash.com/photo-1567943556786-6acea6e7f562?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=950&q=80",
  "https://images.unsplash.com/photo-1568308389933-4d5b260272ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1568552660092-bec1b0d07852?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80"
]

SPECIES = [ "cat", "cat", "dog", "dog", "dog", "dog", "cat", "dog", "dog", "cat" ]

user = User.new(
  name: "Elisa",
  email: "elisa.vanderperre@hotmail.com",
  password: "123456"
)
user.save

puts 'Creating 10 fake animals...'
index = 0
10.times do
  animal = Animal.new(
    name: Faker::Creature::Cat.name,
    species: SPECIES[index],
    availability_start: Date.new(2019,12,1),
    availability_end: Date.new(2019,12,31),
    location: Faker::Address.city,
    remote_photo_url: PICTURES[index],
    user: user,
    price: rand(5..50),
    characteristics: Faker::Food.description
  )
  animal.save!
  index += 1
end
puts 'Finished!'

p "#{User.count} users created"
p "#{Animal.count} animals created"
