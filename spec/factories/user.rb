FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
    first_name { "FirstName" }
    last_name { "LastName" }
    username { Faker::Internet.username }

    trait :with_addition do
      after(:create) do
        FactoryBot.create(:role)
        FactoryBot.create(:user_role)
        FactoryBot.create(:team)
        FactoryBot.create(:team_user)
        FactoryBot.create(:add_member_in_team)
      end
    end
  end
end
