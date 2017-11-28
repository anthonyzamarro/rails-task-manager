# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Starting to seed"

Task.destroy_all

10.times do |task|
  task = Task.new(name: Faker::Beer.name, completed: false, details: Faker::Beer.alcohol)
  p task.name
  p task.details
  task.save
end

puts "Seeding complete"
