# frozen_string_literal: true

# controller for handling roles functionalities
class RolesController < ApplicationController
  before_action :set_role, only: %i[edit update destroy]

  # GET /roles
  def index
    if UserRole.find_by(user_id: current_user.id, role_id: 1)
      @roles = Role.all
    else
      @roles = current_user.owned_roles
    end
  end

  # GET /roles/new
  def new
    @role = Role.new
  end

  # POST /roles
  def create
    @role = Role.new(role_params)

    if @role.save
      redirect_to roles_path, notice: "Role was successfully created."
    else
      render :new
    end
  end

  # GET /roles/:id/edit
  def edit
  end

  # PATCH /roles/:id
  def update
    if @role.update(role_params)
      redirect_to roles_path, notice: "Role was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /roles/:id
  def destroy
    @role.destroy
    redirect_to roles_url, notice: "Role was successfully destroyed."
  end

  private

  # seting role
  def set_role
    @role = Role.find(params[:id])
  end

  # permit params
  def role_params
    params.require(:role).permit(:name, :description, :user_id)
  end
end
