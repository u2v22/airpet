# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Animal.destroy_all
User.destroy_all

Animal.create(name: 'billie', photo: 'img', species: 'dog', location: 'barcelona', price: 10, characteristics: "very good", user_id: 1, availability: false )
@elisa = User.create(name: "Elisa", email: "elisa.vanderperre@hotmail.com")

@bob = Animal.new(name: "Bob",species: "dog",availability: true,location: "Belgium",photo: "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
@bob.user = @elisa
@bob.save
@garfield = Animal.new(
  name: "Garfield",
  species: "cat",
  availability: true,
  location: "Spain",
  photo: "https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png"
)
@garfield.user = @elisa
@garfield.save
p "#{Animal.count} animals created"
