# app/controllers/user_teams_controller.rb
class TeamUsersController < ApplicationController
  before_action :set_team

  def create
    params[:user_id].each do |user_id|
      @team.users << User.find(user_id)
      @team.user_teams.last.update(role: params[:role])
    end
    redirect_to @team
  end

  private

  def set_team
    @team = Team.find(params[:team_id])
  end
end
