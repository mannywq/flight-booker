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

a1 = Airport.create(code: 'FUK', name: 'Fukuoka')
a2 = Airport.create(code: 'HND', name: 'Haneda')
a3 = Airport.create(code: 'NRT', name: 'Narita')
a4 = Airport.create(code: 'BNE', name: 'Brisbane')
a5 = Airport.create(code: 'SIN', name: 'Singapore')
a1.save
a2.save
a3.save
a4.save
a5.save

f1 = Flight.new(flight_no: 'SQ655', departure_airport: a1, arrival_airport: a5,
                duration: 410)
f2 = Flight.new(flight_no: 'QF62', departure_airport: a2, arrival_airport: a4,
                duration: 545)
f1.save
f2.save

puts 'Seeding completed.'
