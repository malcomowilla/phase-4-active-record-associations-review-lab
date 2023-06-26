# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
30.times do
    taxi = Taxi.create(
    name: Faker::Vehicle.car_type
)
end

100.times do
    passenger = Passenger.create(
        name: Faker::Name.name
    )
     taxi = Taxi.order('RANDOM()').first
    rides = Ride.create(
        number_of_rides: rand(1..100),
        taxi_id: taxi.id,
        passenger_id: passenger.id
    )
end




