class User < ApplicationRecord
  # email:string
  # password_digest:string
  #
  # passwords:string virtual
  # password_confirmation:string virtual

  has_secure_password

  validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
end
