# frozen_string_literal: true

# controller for handling dashboards functionalities
class DashboardsController < ApplicationController
  skip_before_action :authenticate_user!

  # GET /dashboards
  def index
  end
end
