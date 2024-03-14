require "open-uri"
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
user5 = User.create!(email: "spiderman@lewagon.com", password: "123456", name: "Spiderman", age: "15", country: "États-Unis", phone_number: "555-123", rating:"4")
user6 = User.create!(email: "thor@lewagon.com", password: "123456", name: "Thor", age: "2000", country: "États-Unis", phone_number: "555-123", rating:"4")
user7 = User.create!(email: "elastigirl@lewagon.com", password: "123456", name: "Elastigirl", age: "39", country: "États-Unis", phone_number: "555-123", rating:"5")

superpower1 = Superpower.new(name: "Superman", category: "DC Comics", price: "100€/day", img_url: "https://wallpapercave.com/wp/wp6926447.jpg", user: user1)
file = URI.open("https://wallpapercave.com/wp/wp6926447.jpg")
superpower1.photo.attach(io: file, filename: "Superman.jpg", content_type: "image/jpg")
superpower1.save!
superpower2 = Superpower.new(name: "Batman", category: "DC Comics", price: "50€/day", img_url: "https://getwallpapers.com/wallpaper/full/d/9/d/824786-popular-batman-dark-knight-wallpaper-1080x1920-for-ios.jpg", user: user2)
file = URI.open("https://getwallpapers.com/wallpaper/full/d/9/d/824786-popular-batman-dark-knight-wallpaper-1080x1920-for-ios.jpg")
superpower2.photo.attach(io: file, filename: "Superman.jpg", content_type: "image/jpg")
superpower2.save!
superpower3 = Superpower.new(name: "Iron Man", category: "Marvel", price: "100€/day", img_url: "https://wallpapers.com/images/high/action-oumwqcguy2ix2ynx.webp", user: user3)
file = URI.open("https://wallpapers.com/images/high/action-oumwqcguy2ix2ynx.webp")
superpower3.photo.attach(io: file, filename: "Superman.jpg", content_type: "image/jpg")
superpower3.save!
superpower4 = Superpower.new(name: "Thor", category: "Marvel", price: "150€/day", img_url: "https://wallsdesk.com/wp-content/uploads/2016/12/Thor-Wallpaper.jpg", user: user6)
file = URI.open("https://wallsdesk.com/wp-content/uploads/2016/12/Thor-Wallpaper.jpg")
superpower4.photo.attach(io: file, filename: "Superman.jpg", content_type: "image/jpg")
superpower4.save!
superpower5 = Superpower.new(name: "Spiderman", category: "Marvel", price: "75€/day", img_url: "https://www.hdwallpaper.nu/wp-content/uploads/2018/12/spiderman-6.jpg", user: user5)
file = URI.open("https://www.hdwallpaper.nu/wp-content/uploads/2018/12/spiderman-6.jpg")
superpower5.photo.attach(io: file, filename: "Superman.jpg", content_type: "image/jpg")
superpower5.save!
superpower6 = Superpower.new(name: "Elastigirl", category: "Disney", price: "100€/day", img_url: "https://c4.wallpaperflare.com/wallpaper/131/278/444/animation-elastigirl-helen-parr-incredibles-2-wallpaper-preview.jpg", user: user7)
file = URI.open("https://c4.wallpaperflare.com/wallpaper/131/278/444/animation-elastigirl-helen-parr-incredibles-2-wallpaper-preview.jpg")
superpower6.photo.attach(io: file, filename: "Superman.jpg", content_type: "image/jpg")
superpower6.save!
superpower7 = Superpower.new(name: "Wonder Woman", category: "DC Comics", price: "100€/day", img_url: "https://wallpapercave.com/wp/wp2987310.jpg", user: user4)
file = URI.open("https://wallpapercave.com/wp/wp2987310.jpg")
superpower7.photo.attach(io: file, filename: "Superman.jpg", content_type: "image/jpg")
superpower7.save!
