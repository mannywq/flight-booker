# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
puts 'Seeding database'
Airport.destroy_all
Flight.destroy_all

airports = [

  { code: 'FUK', name: 'Fukuoka' },
  { code: 'HND', name: 'Haneda' },
  { code: 'NRT', name: 'Narita' },
  { code: 'BNE', name: 'Brisbane' },
  { code: 'SIN', name: 'Singapore' }
]

Airport.create(airports)

flights = [
  { flight_no: 'SQ655', departure_airport: Airport.find(1),
    arrival_airport: Airport.find(5), duration: 410, departure_time: Time.now },
  { flight_no: 'QF62', departure_airport: Airport.find(2),
    arrival_airport: Airport.find(4), duration: 410, departure_time: Time.now },
  { flight_no: 'NH1076', departure_airport: Airport.find(1),
    arrival_airport: Airport.find(2), duration: 410, departure_time: Time.now }

]
Flight.create(flights)

puts 'Seeding completed.'
