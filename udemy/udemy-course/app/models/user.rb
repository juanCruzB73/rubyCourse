class User < ApplicationRecord
  before_save { self.email=email.downcase }
  has_many :articles
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }, length: { minimum: 8, maximum: 100 }
  has_secure_password
  # Password must be present on create, optional on update
  validates :password, presence: true, length: { minimum: 6 }, on: :create
  validates :password, length: { minimum: 6 }, allow_nil: true, on: :update

  has_secure_password
end
