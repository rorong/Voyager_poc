# spec/models/user_role_spec.rb
require 'rails_helper'

RSpec.describe UserRole, type: :model do
  context "validations" do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:role_id) }
  end

  context "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:role) }
  end
end
