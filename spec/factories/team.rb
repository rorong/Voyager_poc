# spec/factories/teams.rb
FactoryBot.define do
  factory :team do
    name { "Test Team" }
    description { "Testing" }
    user_id { 1 }
  end
end
