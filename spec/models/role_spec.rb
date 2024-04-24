# # spec/models/role_spec.rb
# require 'rails_helper'

# RSpec.describe Role, type: :model do
#   context "validations" do
#     it { should validate_presence_of(:name) }
#     it { should validate_presence_of(:description) }
#     it { should validate_presence_of(:user_id) }
#   end

#   context "associations" do
#     it { should belong_to(:owner).class_name("User").with_foreign_key("user_id") }
#     it { should have_many(:user_roles) }
#     it { should have_many(:users).through(:user_roles) }
#   end
# end
