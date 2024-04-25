require "rails_helper"

RSpec.describe Role, type: :model do
  let(:role) { create(:role) }

  describe "validations" do
    it "has a valid factory" do
      expect(build(:role)).to be_valid
    end

    it "is not valid without a user_id" do
      role = Role.new(user_id: nil, name: "", description: "")
      expect(role).to_not be_valid
    end

    it "is not valid without a name" do
      role = Role.new(user_id: 1, name: "", description: "test")
      expect(role).to_not be_valid
    end

    it "is not valid without a description" do
      role = Role.new(user_id: 1, name: "test", description: "")
      expect(role).to_not be_valid
    end
  end

  describe "associations" do
    it "belongs to a user" do
      association = Role.reflect_on_association(:owner)
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
