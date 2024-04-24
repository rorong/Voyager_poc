# spec/models/team_spec.rb
require 'rails_helper'

RSpec.describe Team, type: :model do
  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:user_id) }
  end

  context "associations" do
    it { should belong_to(:owner).class_name("User").with_foreign_key("user_id") }
    it { should have_many(:team_users) }
    it { should have_many(:users).through(:team_users) }
  end
end
