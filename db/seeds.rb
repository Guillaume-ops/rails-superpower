# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Superpower.destroy_all
User.destroy_all

user1 = User.create!(email: "superman@lewagon.com", password: "123456", name: "Superman", age: "35", country: "États-Unis", phone_number: "555-123", rating:"5")
user2 = User.create!(email: "batman@lewagon.com", password: "123456", name: "Batman", age: "40", country: "États-Unis", phone_number: "555-123", rating:"4")
user3 = User.create!(email: "ironman@lewagon.com", password: "123456", name: "Iron Man", age: "35", country: "États-Unis", phone_number: "555-123", rating:"5")
user4 = User.create!(email: "wonderwoman@lewagon.com", password: "123456", name: "Wonder Woman", age:"300", country: "États-Unis", phone_number: "555-123", rating:"5")
user5 = User.create!(email: "spiderman@lewagon.com", password: "123456", name: "Spiderman", age:"15", country: "États-Unis", phone_number: "555-123", rating:"4")
user6 = User.create!(email: "thor@lewagon.com", password: "123456", name: "Thor", age:"2000", country: "États-Unis", phone_number: "555-123", rating:"4")
user7 = User.create!(email: "elastigirl@lewagon.com", password: "123456", name: "Elastigirl", age:"39", country: "États-Unis", phone_number: "555-123", rating:"5")

Superpower.create!(name: "Superman", category: "DC Comics", price: "100€/day", img_url: "https://wallpapercave.com/wp/wp6926447.jpg", user: user1)
Superpower.create!(name: "Batman", category: "DC Comics", price: "50€/day", img_url: "https://getwallpapers.com/wallpaper/full/d/9/d/824786-popular-batman-dark-knight-wallpaper-1080x1920-for-ios.jpg", user: user2)
Superpower.create!(name: "Iron Man", category: "Marvel", price: "100€/day", img_url: "https://wallpapers.com/images/high/action-oumwqcguy2ix2ynx.webp", user: user3)
Superpower.create!(name: "Wonder Woman", category: "DC Comics", price: "100€/day", img_url: "https://wallpapercave.com/wp/wp2987310.jpg", user: user4)
Superpower.create!(name: "Spiderman", category: "Marvel", price: "75€/day", img_url: "https://www.hdwallpaper.nu/wp-content/uploads/2018/12/spiderman-6.jpg", user: user5)
Superpower.create!(name: "Thor", category: "Marvel", price: "150€/day", img_url: "https://wallsdesk.com/wp-content/uploads/2016/12/Thor-Wallpaper.jpg", user: user6)
Superpower.create!(name: "Elastigirl", category: "Disney", price: "100€/day", img_url: "https://c4.wallpaperflare.com/wallpaper/131/278/444/animation-elastigirl-helen-parr-incredibles-2-wallpaper-preview.jpg", user: user7)
