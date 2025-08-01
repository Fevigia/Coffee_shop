class Customer < ApplicationRecord
  # Validations
  validates :fname, presence: true
  validates :lname, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password_digest, presence: true
end
