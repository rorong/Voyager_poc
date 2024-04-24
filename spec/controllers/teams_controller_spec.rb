# # spec/controllers/teams_controller_spec.rb
# require 'rails_helper'

# RSpec.describe TeamsController, type: :controller do
#   describe "GET #index" do
#     context "when the user is admin" do
#       before do
#         @user = create(:user)
#         create(:user_role, user: @user, role_id: 1)
#         sign_in @user
#       end

#       it "returns http success" do
#         get :index
#         expect(response).to have_http_status(:success)
#       end

#       it "renders the index template" do
#         get :index
#         expect(response).to render_template("index")
#       end

#       it "assigns all teams as @teams" do
#         team = create(:team)
#         get :index
#         expect(assigns(:teams)).to eq([team])
#       end
#     end

#     context "when the user is not admin" do
#       before do
#         @user = create(:user)
#         sign_in @user
#       end

#       it "returns http success" do
#         get :index
#         expect(response).to have_http_status(:success)
#       end

#       it "renders the index template" do
#         get :index
#         expect(response).to render_template("index")
#       end

#       it "assigns the current user's owned teams as @teams" do
#         team = create(:team)
#         @user.owned_teams << team
#         get :index
#         expect(assigns(:teams)).to eq([team])
#       end
#     end
#   end

#   describe "GET #new" do
#     before do
#       @user = create(:user)
#       create(:user_role, user: @user, role_id: 1)
#       sign_in @user
#     end

#     it "returns http success" do
#       get :new
#       expect(response).to have_http_status(:success)
#     end

#     it "renders the new template" do
#       get :new
#       expect(response).to render_template("new")
#     end

#     it "assigns a new team as @team" do
#       get :new
#       expect(assigns(:team)).to be_a_new(Team)
#     end
#   end

#   describe "POST #create" do
#     before do
#       @user = create(:user)
#       create(:user_role, user: @user, role_id: 1)
#       sign_in @user
#     end

#     context "with valid params" do
#       let(:valid_params) { { team: attributes_for(:team) } }

#       it "creates a new team" do
#         expect {
#           post :create, params: valid_params
#         }.to change(Team, :count).by(1)
#       end

#       it "redirects to the teams list" do
#         post :create, params: valid_params
#         expect(response).to redirect_to(teams_path)
#       end
#     end

#     context "with invalid params" do
#       let(:invalid_params) { { team: { name: nil } } }

#       it "does not save the new team" do
#         expect {
#           post :create, params: invalid_params
#         }.to_not change(Team, :count)
#       end

#       it "re-renders the new method" do
#         post :create, params: invalid_params
#         expect(response).to render_template(:new)
#       end
#     end
#   end

#   describe "GET #edit" do
#     before do
#       @user = create(:user)
#       create(:user_role, user: @user, role_id: 1)
#       sign_in @user
#     end

#     it "returns http success" do
#       team = create(:team)
#       get :edit, params: { id: team.id }
#       expect(response).to have_http_status(:success)
#     end

#     it "renders the edit template" do
#       team = create(:team)
#       get :edit, params: { id: team.id }
#       expect(response).to render_template("edit")
#     end

#     it "assigns the requested team as @team" do
#       team = create(:team)
#       get :edit, params: { id: team.id }
#       expect(assigns(:team)).to eq(team)
#     end
#   end

#   describe "PATCH #update" do
#     before do
#       @user = create(:user)
#       create(:user_role, user: @user, role_id: 1)
#       sign_in @user
#     end

#     context "with valid params" do
#       let(:new_attributes) { { name: "New Team Name" } }

#       it "updates the requested team" do
#         team = create(:team)
#         patch :update, params: { id: team.id, team: new_attributes }
#         team.reload
#         expect(team.name).to eq(new_attributes[:name])
#       end

#       it "redirects to the teams list" do
#         team = create(:team)
#         patch :update, params: { id: team.id, team: new_attributes }
#         expect(response).to redirect_to(teams_path)
#       end
#     end

#     context "with invalid params" do
#       let(:invalid_attributes) { { name: nil } }

#       it "does not update the team" do
#         team = create(:team)
#         old_name = team.name
#         patch :update, params: { id: team.id, team: invalid_attributes }
#         team.reload
#         expect(team.name).to eq(old_name)
#       end

#       it "re-renders the edit method" do
#         team = create(:team)
#         patch :update, params: { id: team.id, team: invalid_attributes }
#         expect(response).to render_template(:edit)
#       end
#     end
#   end

#   describe "GET #show" do
#     before do
#       @user = create(:user)
#       create(:user_role, user: @user, role_id: 1)
#       sign_in @user
#     end

#     it "returns http success" do
#       team = create(:team)
#       get :show, params: { id: team.id }
#       expect(response).to have_http_status(:success)
#     end

#     it "renders the show template" do
#       team = create(:team)
#       get :show, params: { id: team.id }
#       expect(response).to render_template("show")
#     end

#     it "assigns the requested team as @team" do
#       team = create(:team)
#       get :show, params: { id: team.id }
#       expect(assigns(:team)).to eq(team)
#     end
#   end

#   describe "DELETE #destroy" do
#     before do
#       @user = create(:user)
#       create(:user_role, user: @user, role_id: 1)
#       sign_in @user
#     end

#     it "destroys the requested team" do
#       team = create(:team)
#       expect {
#         delete :destroy, params: { id: team.id }
#       }.to change(Team, :count).by(-1)
#     end

#     it "redirects to the teams list" do
#       team = create(:team)
#       delete :destroy, params: { id: team.id }
#       expect(response).to redirect_to(teams_url)
#     end
#   end
# end
