class User < ApplicationRecord
  has_many :attendances
  has_many :events, through: :attendances

  validates :last_name, presence: true
  validates :first_name, presence: true
  # validates :email,
  # presence: true,
  # uniqueness: true,
  # format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
  # validates :encrypted_password, presence: true
end
