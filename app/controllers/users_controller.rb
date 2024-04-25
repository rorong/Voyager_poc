# frozen_string_literal: true

# controller for handling users functionalities
class UsersController < ApplicationController
  before_action :set_user, only: %i[edit update destroy show]

  # GET /users
  def index
    if UserRole.find_by(user_id: current_user.id, role_id: 1)
      @users = User.all
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path, notice: "User was successfully created."
    else
      render :new
    end
  end

  # GET /users/:id/edit
  def edit
  end

  # PATCH /users/:id
  def update
    if @user.update(user_params)
      redirect_to users_path, notice: "User was successfully updated."
    else
      render :edit
    end
  end

  # GET /users/:id
  def show
  end

  # DELETE /users/:id
  def destroy
    @user.destroy
    redirect_to users_url, notice: "User was successfully destroyed."
  end

  private

  # seting role
  def set_user
    @user = User.find(params[:id])
  end

  # permit params
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username,
      :email, :password, :password_confirmation)
  end
end
