Booking.destroy_all
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
  "https://images.unsplash.com/photo-1568552660092-bec1b0d07852?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1425082661705-1834bfd09dca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1557996971-f245264c98b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
  "https://images.unsplash.com/photo-1535083783855-76ae62b2914e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1275&q=80",
  "https://images.unsplash.com/photo-1552728089-57bdde30beb3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
  "https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1276&q=80",
  "https://images.unsplash.com/photo-1552053831-71594a27632d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=912&q=80",
  "https://images.unsplash.com/photo-1551887373-3c5bd224f6e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
  "https://images.unsplash.com/photo-1550256051-e8b328f5bf54?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
  "https://images.unsplash.com/photo-1548247416-ec66f4900b2e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1263&q=80",
  "https://images.unsplash.com/photo-1548412342-98d0d2a49205?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1850&q=80"
]

SPECIES = [ "Cat", "Cat", "Dog", "Dog", "Dog", "Dog", "Cat", "Dog", "Dog", "Cat", "Hamster", "Hamster", "Bird", "Bird", "Cat", "Dog", "Dog", "Dog", "Cat", "Hamster" ]

DESC = ["Hello there! I bet you noticed my cute face right away. I am currently hanging out in a foster home because I am a shy gal and the shelter is a bit too busy for my taste.", "I'm a beautiful girl with a colorful personality. I can become overstimulated so let's take things slow to ensure we have a long and happy life together, okay? I would be the happiest girl as the center of attention in an adult only home. I would be the most comfortable if you let me come to you on my own time for the first little while. I am spunky and tons of fun, so please ensure you have lots and lots of interactive and enriching toys to play with me with! I'm looking for a cat savvy family that can pay attention to my body signals and understand when to give me space.", "I am a little shy with new people especially so if you promise to take it slow with me at first and let me come to you on my terms then I know we can soon become the best of friends. I'm quite a playful girl, so I hope you can provide me with plenty of toys!", "I'm a sweet, shy, 11 month old dog looking for a place to call my own. Wise and mature - that's how I prefer my people, so I am looking for an adult-only home. I get very attached to my people, I want to be with them all the time!", "My ideal family would be able to provide me with a calm and quiet home where I can snuggle up on the couch or laze in a sunbeam all day.", "I'm a super cute and curious gal that is looking for a new home! I have lived with other cats before and seem to be curious with calm dogs. I have the LOUDEST purr and will purr whenever I'm around my people.", "I am an adorable goofball looking for a home to call my very own. A very kind soul saved me from a dumpster, and I can't wait to start a new life. I was named after a comedian, because I am going to give my new family a lifetime of laughs.", "I can be a bit rude at times so they recommend I hang out with older humans (15+) I just love to play with anyone and everything, smaller animals are too much fun for me though.", "I bet you noticed me right away, I am a fluffy fluffy girl who will need lots of grooming to keep my coat is tip top shape.I am a special breed so do your research on Chow Chow's if you think I might be a good fit, if you have experience with dogs like me that is even better.", "I may also be good with select doggy friends but we would need to meet first. I do need some help working on resource guarding of my favourite treats so if you do have another dog you will need to feed up separately and help me feel comfortable sharing.", "I am a little furball who enjoys long walks on the wheel. A quiet environment is perfect for me. My favorite foods are baby carrots, romaine lettuce, and bell pepper.", "I ran away from home and now I live in the Toronto shelter. I would love a nice home go visit.", "I am a calm and friend bird that loves to hang out at the bird bath.", "I love occasional conversations. Pretty much just repeating what you're saying.", "Sure I am small and cute. But make sure you have enough time for play because I am very active.", "I am a heart breaker. After fostering me, you might not want to let go.", "Belly rub! Belly rub! Belly rub!", "I love walks!", "I am an independent ourdoor kitty. I love to go hunting at night. You can take me camping and to the park.", "I love to play hide and seek. Don't worry if you don't see me in my cage. I am probably just hiding."]

CITY = ["Barcelona", "Calgary", "Berlin", "New York", "Vancouver", "Maui", "San Francisco", "Stockholm", "Chicago", "Bali", "Los Angeles", "Toronto", "Sao Paulo", "Mexico City", "Marrakesh", "Brussels", "Saint Petersburg", "Detroit", "Bogota", "Barcelona"]

user = User.new(
  name: "Elisa Van der Perre",
  email: "elisa.vanderperre@hotmail.com",
  password: "123456"
)
user.save

puts 'Creating 12 fake animals...'
index = 0

20.times do
  animal = Animal.new(
    name: Faker::Creature::Cat.name,
    species: SPECIES[index],
    availability_start: Date.new(2019,12,1),
    availability_end: Date.new(2019,12,31),
    location: CITY[index],
    remote_photo_url: PICTURES[index],
    user: user,
    price: rand(5..50),
    characteristics: DESC[index],
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  )
  animal.save!
  index += 1

  booking = Booking.new(
    start_date: Date.new(2019,12,1),
    end_date: Date.new(2019,12,31),
    user: user,
    animal: animal
    )
  booking.save!

end


puts 'Finished!'

p "#{User.count} users created"
p "#{Animal.count} animals created"
p "#{Booking.count} bookings created"
