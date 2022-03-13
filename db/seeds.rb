puts 'cleaning up database'
Flat.destroy_all
puts 'database is clean'

flats = [
  { name: 'Yaeger House', address: 'Wall Maria, Shiganshina District', description: 'It is where Eren Yeager lived before it was destroyed by the titans. There is a surprise in the basement but a key is needed.', price_per_night: 22, number_of_guests: 4, picture_url: 'https://preview.redd.it/p4jr7cqouxw61.png?auto=webp&s=d9e4e9b5abe8f3b083f7b157bdeb025181e09163' },
  { name: 'Underground House', address: 'Wall Sheena', description: 'A house in the Underground, the poverty-stricken city beneath Mitras and other districts of Wall Sheena.', price_per_night: 9, number_of_guests: 2, picture_url: 'https://i.pinimg.com/originals/53/b3/0a/53b30aebb73accf2b01931b2a645d036.jpg' },
  { name: 'Utgard Castle', address: 'Wall Rose', description: 'An abandoned castle close to the inner side of Wall Rose. It contains large quantities of old food supplies, including liquor and cans of herring with strange writing on them.', price_per_night: 118, number_of_guests: 8, picture_url: 'https://i.quotev.com/img/q/u/20/2/11/jenjb6kj2h.jpg'  },
  { name: 'Reiss Chapel', address: 'Wall Rose', description: 'A church owned by the Reiss family. On the surface, it appeared to be a regular church that the Reiss family frequently prayed in.', price_per_night: 65, number_of_guests: 6, picture_url: 'https://static.wikia.nocookie.net/shingekinokyojin/images/b/b6/The_Reiss_Chapel_above_ground.png' }
]

flats.each do |flat|
  Flat.create! flat
end

puts 'done'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
