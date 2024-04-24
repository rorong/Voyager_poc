# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.where(email: "admin@gmail.com").first_or_create!(
  email: "admin@gmail.com",
  password: "password",
  password_confirmation: "password",
  username: "admin",
  first_name: "admin",
  last_name: "admin"
)
Role.first_or_create!(name: "Admin", description: "for admin functionalities", user_id: 1)
UserRole.first_or_create!(user_id: 1, role_id: 1)
