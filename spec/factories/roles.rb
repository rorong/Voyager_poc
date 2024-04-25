# spec/factories/roles.rb

FactoryBot.define do
  factory :role do
    name { "Test Role" }
    description { "testing" }
    user_id { 1 }
  end
end
