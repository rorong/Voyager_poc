# frozen_string_literal: true

class UserRole < ApplicationRecord
  # validations
  validates :user_id, presence: true
  validates :role_id, presence: true

  # associations
  belongs_to :user
  belongs_to :role
end
