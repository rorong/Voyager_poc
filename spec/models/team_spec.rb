require "rails_helper"

RSpec.describe Team, type: :model do
  let(:team) { create(:team) }

  describe "validations" do
    it "has a valid factory" do
      expect(build(:team)).to be_valid
    end

    it "is not valid without a user_id" do
      team = Team.new(user_id: nil, name: "", description: "")
      expect(team).to_not be_valid
    end

    it "is not valid without a name" do
      team = Team.new(user_id: 1, name: "", description: "test")
      expect(team).to_not be_valid
    end

    it "is not valid without a description" do
      team = Team.new(user_id: 1, name: "test", description: "")
      expect(team).to_not be_valid
    end
  end

  describe "associations" do
    it "belongs to a user" do
      association = Team.reflect_on_association(:owner)
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
