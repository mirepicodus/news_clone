class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true
  validates :name, uniqueness: true
  # validates :email, uniqueness: true
  # validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
