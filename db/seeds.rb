# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
user1 = User.create!(email: "superman@lewagon.com", password: "123456", name: "Superman", age: "35", country: "États-Unis", phone_number: "555-123", rating:"5")
user2 = User.create!(email: "batman@lewagon.com", password: "123456", name: "Batman", age: "40", country: "États-Unis", phone_number: "555-123", rating:"4")
user3 = User.create!(email: "ironman@lewagon.com", password: "123456", name: "Iron Man", age: "35", country: "États-Unis", phone_number: "555-123", rating:"5")

Superpower.create!(name: "Superman", category: "DC Comics", price: "100€/day", user: user1)
Superpower.create!(name: "Batman", category: "DC Comics", price: "50€/day", user: user2)
Superpower.create!(name: "Iron Man", category: "Marvel", price: "100€/day", user: user3)
