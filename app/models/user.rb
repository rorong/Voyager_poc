class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  # validations
  validates :username, presence: true, uniqueness: true, format: {with: /\A\w+\z/, message: "can only contain alpha-numeric characters"}
  validates :email, presence: true, uniqueness: true

  # associations
  belongs_to :role, dependent: :destroy
  has_one_attached :avatar

end
