require 'faker'

10.times do
 city = City.create(name: Faker::Name.unique.name)	
end


10.times do
 doctor = Doctor.create(first_name: Faker::Name.unique.name, last_name: Faker::Name.unique.name, postal_code: "95100", city_id: rand(1..10))	
end

10.times do
 patient = Patient.create(first_name: Faker::Name.unique.name, last_name: Faker::Name.unique.name, city_id: rand(1..10))
end

10.times do
 appointment = Appointment.create(date: "2019-02-02", doctor_id: rand(1..10), patient_id: rand(1..10), city_id: rand(1..10))
end

10.times do
 speciality = Speciality.create(name: Faker::Name.unique.name)
end


10.times do
 specialdoc = Specialdoc.create(doctor_id: rand(1..10), speciality_id: rand(1..10))
end











# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
