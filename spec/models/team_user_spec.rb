# spec/models/team_user_spec.rb
require 'rails_helper'

RSpec.describe TeamUser, type: :model do
  context "validations" do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:role_id) }
  end

  context "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:team) }
  end
end
