require "rails_helper"

RSpec.describe UserRole, type: :model do
  let(:user_role) { create(:user_role) }

  describe "validations" do
    it "has a valid factory" do
      expect(user_role).to be_valid
    end

    it "is not valid without a user_id and role_id" do
      user_role = UserRole.new(user_id: nil, role_id: nil)
      expect(user_role).to_not be_valid
    end

    it "is not valid without a role_id" do
      user_role = UserRole.new(user_id: 1, role_id: nil)
      expect(user_role).to_not be_valid
    end

    it "is not valid without a user_id" do
      user_role = UserRole.new(user_id: nil, role_id: 1)
      expect(user_role).to_not be_valid
    end
  end

  describe "associations" do
    it "belongs to a user" do
      association = UserRole.reflect_on_association(:user)
      expect(association.macro).to eq(:belongs_to)
    end

    it "belongs to a role" do
      association = UserRole.reflect_on_association(:role)
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
