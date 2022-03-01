puts 'cleaning up database'
Flat.destroy_all
puts 'database is clean'

flats = [
  { name: 'Light & Spacious Garden Flat London', address: '10 Clifton Gardens London W9 1DT', description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 75, number_of_guests: 3 },
  { name: 'Le Chanel Coco Flat', address: 'Avenue des Champs Elysee', description: 'An awesome flat on the Champs Elysees. Stunning View.', price_per_night: 118, number_of_guests: 2 },
  { name: 'Lady Gaga', address: '1 rue Bad Romance', description: 'It is very fancy.', price_per_night: 65, number_of_guests: 8 },
  { name: 'Yaeger House', address: 'Trost District', description: 'A cute little house with something special in the basement. A key is needed', price_per_night: 12, number_of_guests: 4 }
]

flats.each do |flat|
  Flat.create! flat
end

=begin

puts 'creating database'
4.times do
  flat = Flat.create!(
    name: ['Light & Spacious Garden Flat London', 'Le Chanel Coco Flat', 'Lady Gaga Villa', 'Eren House'].sample,
    address: ['10 Clifton Gardens London W9 1DT', '1 rue de Tintin', 'Paradise Island', 'Trost District'].sample,
    description: ['A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', 'Very average flat, but a nice cute small dog inside', 'Massive villa. The perfect place for partying', 'a family house with something cool in the basement but you need the key'].sample,
    price_per_night: [75, 85, 32, 99].sample,
    number_of_guests: [3, 10, 2, 1].sample
  )
  puts "flat #{flat.id} is created"
end

=end

puts 'done'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
