puts 'cleaning up database'
Flat.destroy_all
puts 'database is clean'

puts 'creating database'
4.times do
  flat = Flat.create!(
    name: ['Light & Spacious Garden Flat London', 'Le Chanel Coco Flat', 'Lady Gaga Villa', 'Eren House'],
    address: ['10 Clifton Gardens London W9 1DT', '1 rue de Tintin', 'Paradise Island', 'Trost District'],
    description: ['A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', 'Very average flat, but a nice cute small dog inside', 'Massive villa. The perfect place for partying', 'a family house with something cool in the basement but you need the key'],
    price_per_night: [75, 85, 32, 99],
    number_of_guests: [3, 10, 2, 1]
  )
  puts "flat #{flat.id} is created"
end

puts 'done'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
