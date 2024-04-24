# # spec/controllers/roles_controller_spec.rb
# require 'rails_helper'

# RSpec.describe RolesController, type: :controller do
#   describe "GET #index" do
#     context "when the user is admin" do
#       before do
#         @user = FactoryBot.create(:user)
#         FactoryBot.create(:user_role, user: @user, role_id: 1)
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

#       it "assigns all roles as @roles" do
#         role = FactoryBot.create(:role)
#         get :index
#         expect(assigns(:roles)).to eq([role])
#       end
#     end

#     context "when the user is not admin" do
#       before do
#         @user = FactoryBot.create(:user)
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

#       it "assigns the current user's owned roles as @roles" do
#         role = FactoryBot.create(:role)
#         @user.owned_roles << role
#         get :index
#         expect(assigns(:roles)).to eq([role])
#       end
#     end
#   end

#   describe "GET #new" do
#     before do
#       @user = FactoryBot.create(:user)
#       FactoryBot.create(:user_role, user: @user, role_id: 1)
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

#     it "assigns a new role as @role" do
#       get :new
#       expect(assigns(:role)).to be_a_new(Role)
#     end
#   end

#   describe "POST #create" do
#     before do
#       @user = FactoryBot.create(:user)
#       FactoryBot.create(:user_role, user: @user, role_id: 1)
#       sign_in @user
#     end

#     context "with valid params" do
#       let(:valid_params) { { role: FactoryBot.attributes_for(:role) } }

#       it "creates a new role" do
#         expect {
#           post :create, params: valid_params
#         }.to change(Role, :count).by(1)
#       end

#       it "redirects to the roles list" do
#         post :create, params: valid_params
#         expect(response).to redirect_to(roles_path)
#       end
#     end

#     context "with invalid params" do
#       let(:invalid_params) { { role: { name: nil } } }

#       it "does not save the new role" do
#         expect {
#           post :create, params: invalid_params
#         }.to_not change(Role, :count)
#       end

#       it "re-renders the new method" do
#         post :create, params: invalid_params
#         expect(response).to render_template(:new)
#       end
#     end
#   end

#   describe "GET #edit" do
#     before do
#       @user = FactoryBot.create(:user)
#       FactoryBot.create(:user_role, user: @user, role_id: 1)
#       sign_in @user
#     end

#     it "returns http success" do
#       role = FactoryBot.create(:role)
#       get :edit, params: { id: role.id }
#       expect(response).to have_http_status(:success)
#     end

#     it "renders the edit template" do
#       role = FactoryBot.create(:role)
#       get :edit, params: { id: role.id }
#       expect(response).to render_template("edit")
#     end

#     it "assigns the requested role as @role" do
#       role = FactoryBot.create(:role)
#       get :edit, params: { id: role.id }
#       expect(assigns(:role)).to eq(role)
#     end
#   end

#   describe "PATCH #update" do
#     before do
#       @user = FactoryBot.create(:user)
#       FactoryBot.create(:user_role, user: @user, role_id: 1)
#       sign_in @user
#     end

#     context "with valid params" do
#       let(:new_attributes) { { name: "New Role Name" } }

#       it "updates the requested role" do
#         role = FactoryBot.create(:role)
#         patch :update, params: { id: role.id, role: new_attributes }
#         role.reload
#         expect(role.name).to eq(new_attributes[:name])
#       end

#       it "redirects to the roles list" do
#         role = FactoryBot.create(:role)
#         patch :update, params: { id: role.id, role: new_attributes }
#         expect(response).to redirect_to(roles_path)
#       end
#     end

#     context "with invalid params" do
#       let(:invalid_attributes) { { name: nil } }

#       it "does not update the role" do
#         role = FactoryBot.create(:role)
#         old_name = role.name
#         patch :update, params: { id: role.id, role: invalid_attributes }
#         role.reload
#         expect(role.name).to eq(old_name)
#       end

#       it "re-renders the edit method" do
#         role = FactoryBot.create(:role)
#         patch :update, params: { id: role.id, role: invalid_attributes }
#         expect(response).to render_template(:edit)
#       end
#     end
#   end

#   describe "DELETE #destroy" do
#     before do
#       @user = FactoryBot.create(:user)
#       FactoryBot.create(:user_role, user: @user, role_id: 1)
#       sign_in @user
#     end

#     it "destroys the requested role" do
#       role = FactoryBot.create(:role)
#       expect {
#         delete :destroy, params: { id: role.id }
#       }.to change(Role, :count).by(-1)
#     end

#     it "redirects to the roles list" do
#       role = FactoryBot.create(:role)
#       delete :destroy, params: { id: role.id }
#       expect(response).to redirect_to(roles_url)
#     end
#   end
# end
