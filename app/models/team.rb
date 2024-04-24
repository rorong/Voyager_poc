# frozen_string_literal: true

class Team < ApplicationRecord
  # validations
  validates :name, presence: true
  validates :description, presence: true
  validates :user_id, presence: true

  # associations
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_many :team_users
  has_many :users, through: :team_users
end
