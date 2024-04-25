# frozen_string_literal: true

class AddMemberInTeam < ApplicationRecord
  # validations
  validates :user_id, presence: true
  validates :role_id, presence: true
  validates :team_id, presence: true

  # associations
  belongs_to :user
  belongs_to :team
  belongs_to :role
end
