# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  # validations
  validates :username, presence: true, uniqueness: true, format: {with: /\A\w+\z/, message: "can only contain alpha-numeric characters"}
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  # associations
  has_one_attached :avatar
  has_many :owned_teams, class_name: "Team", foreign_key: "user_id"
  has_many :team_users, foreign_key: 'user_id'
  has_many :teams, through: :team_users
  has_many :owned_roles, class_name: "Role", foreign_key: "user_id"
  has_many :user_roles
  has_many :roles, through: :user_roles
end
