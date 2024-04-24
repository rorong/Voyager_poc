# # spec/controllers/team_users_controller_spec.rb
# require 'rails_helper'

# RSpec.describe TeamUsersController, type: :controller do
#   describe "POST #create" do
#     let(:user) { create(:user) }
#     let(:team) { create(:team) }

#     before do
#       sign_in user
#     end

#     context "with valid params" do
#       let(:user1) { create(:user) }
#       let(:user2) { create(:user) }
#       let(:valid_params) do
#         {
#           team_id: team.id,
#           user_id: [user1.id, user2.id],
#           role: "Member"
#         }
#       end

#       it "adds users to the team" do
#         expect {
#           post :create, params: valid_params
#         }.to change(UserTeam, :count).by(2)
#       end

#       it "redirects to the team" do
#         post :create, params: valid_params
#         expect(response).to redirect_to(team)
#       end
#     end
#   end
# end
