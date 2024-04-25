class AddMemberInTeamsController < ApplicationController
  def create
    member = AddMemberInTeam.new(user_role_in_team_params)
    if member.save
      redirect_to team_path(id: params[:add_member_in_team][:team_id]), notice: "Role is assigned!"
    else
      redirect_to team_path(id: params[:add_member_in_team][:team_id])
    end
  end

  private

  def user_role_in_team_params
    params.require(:add_member_in_team).permit(:user_id, :role_id, :team_id)
  end
end
