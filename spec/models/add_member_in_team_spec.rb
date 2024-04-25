require "rails_helper"

RSpec.describe AddMemberInTeam, type: :model do
  let(:user) { create(:user) }
  let(:role) { create(:role) }
  let(:team) { create(:team) }

  describe "validations" do
    it "is valid with valid attributes" do
      add_member = AddMemberInTeam.new(user_id: user.id, role_id: role.id, team_id: team.id)
      expect(add_member).to be_valid
    end

    it "is not valid without a user_id" do
      add_member = AddMemberInTeam.new(user_id: nil, role_id: 1, team_id: 1)
      expect(add_member).to_not be_valid
    end

    it "is not valid without a role_id" do
      add_member = AddMemberInTeam.new(user_id: 1, role_id: nil, team_id: 1)
      expect(add_member).to_not be_valid
    end

    it "is not valid without a team_id" do
      add_member = AddMemberInTeam.new(user_id: 1, role_id: 1, team_id: nil)
      expect(add_member).to_not be_valid
    end
  end

  describe "associations" do
    it "belongs to a user" do
      association = AddMemberInTeam.reflect_on_association(:user)
      expect(association.macro).to eq(:belongs_to)
    end

    it "belongs to a team" do
      association = AddMemberInTeam.reflect_on_association(:team)
      expect(association.macro).to eq(:belongs_to)
    end

    it "belongs to a role" do
      association = AddMemberInTeam.reflect_on_association(:role)
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
