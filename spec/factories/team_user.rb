FactoryBot.define do
  factory :team_user do
    association :user, factory: :user
    association :team, factory: :team
  end
end
