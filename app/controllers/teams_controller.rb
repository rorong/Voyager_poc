# frozen_string_literal: true

# controller for handling teams functionalities
class TeamsController < ApplicationController
  before_action :set_team, only: %i[edit update destroy show]

  # GET /teams
  def index
    if current_user.id == 1
      @teams = Team.all
    else
      @teams = current_user.owned_teams
    end
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # POST /teams
  def create
    @team = Team.new(team_params)

    if @team.save
      redirect_to teams_path, notice: "Team was successfully created."
    else
      render :new
    end
  end

  # GET /teams/:id/edit
  def edit
  end

  # PATCH /teams/:id
  def update
    if @team.update(team_params)
      redirect_to teams_path, notice: "Team was successfully updated."
    else
      render :edit
    end
  end

  # GET /teams/:id
  def show
    @add_member_in_team = AddMemberInTeam.new
    @members = AddMemberInTeam.where(team_id: params[:id])
  end

  # DELETE /teams/:id
  def destroy
    @team.destroy
    redirect_to teams_url, notice: "Team was successfully destroyed."
  end

  private

  # seting role
  def set_team
    @team = Team.find(params[:id])
  end

  # permit params
  def team_params
    params.require(:team).permit(:name, :description, :user_id)
  end
end
