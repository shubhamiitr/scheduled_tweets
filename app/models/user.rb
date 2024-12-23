# email:string
# password_digest:string
#
# password:string
# password_confirmation:string
class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'must be a valid email address' }
end
