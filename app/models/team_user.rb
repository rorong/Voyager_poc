# frozen_string_literal: true

class TeamUser < ApplicationRecord
  # validations
  validates :user_id, presence: true
  validates :role_id, presence: true

  # associations
  belongs_to :user
  belongs_to :team
end
