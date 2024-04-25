require "rails_helper"

RSpec.describe TeamUser, type: :model do
  let(:team_user) { create(:team_user) }

  describe "validations" do
    it "has a valid factory" do
      expect(team_user).to be_valid
    end

    it "is not valid without a user_id and team_id" do
      team_user = TeamUser.new(user_id: nil, team_id: nil)
      expect(team_user).to_not be_valid
    end

    it "is not valid without a team_id" do
      team_user = TeamUser.new(user_id: 1, team_id: nil)
      expect(team_user).to_not be_valid
    end

    it "is not valid without a user_id" do
      team_user = TeamUser.new(user_id: nil, team_id: 1)
      expect(team_user).to_not be_valid
    end
  end

  describe "associations" do
    it "belongs to a user" do
      association = TeamUser.reflect_on_association(:user)
      expect(association.macro).to eq(:belongs_to)
    end

    it "belongs to a team" do
      association = TeamUser.reflect_on_association(:team)
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
