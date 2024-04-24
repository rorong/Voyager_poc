# spec/factories/roles.rb
FactoryBot.define do
  factory :role do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
  end
end
