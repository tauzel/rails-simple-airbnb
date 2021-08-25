# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Cleaning mock database
puts "Deleting existing instances of Flats"
Flat.destroy_all
# should also delete all reviews

puts "Creating 5 new Flats"
10.times do
  n_guests = (2..20).to_a.sample
  flat = Flat.new(
    name: Faker::Lorem.sentence(word_count: 4),
    address: Faker::Address.full_address,
    description: Faker::ChuckNorris.fact,
    number_of_guests: n_guests,
    price_per_night: n_guests * (10..40).to_a.sample,
    img_url: "https://picsum.photos/1000/500"
  )
  flat.save!
  p flat
  p ""
end
