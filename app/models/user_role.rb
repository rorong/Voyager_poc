class UserRole < ApplicationRecord
  validates :users_id, presence: true
  validates :roles_id, presence: true
end
