class User < ActiveRecord::Base
  has_secure_password

  validates :password, length: { in: 6..20 }
  validates :name, :email, :password, :password_confirmation, presence: true
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
