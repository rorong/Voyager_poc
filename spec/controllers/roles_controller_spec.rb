# spec/controllers/roles_controller_spec.rb
require "rails_helper"

RSpec.describe RolesController, type: :controller do
  describe "GET #index" do
    let(:user) { create(:user) }

    before do
      sign_in user
    end

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "skips authentication" do
      expect(controller).to_not receive(:authenticate_user!)
      get :index
    end
  end
end
