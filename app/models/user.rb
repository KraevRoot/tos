class User < ActiveRecord::Base
  after_initialize :set_default_role, :if => :new_record?
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
  has_attached_file :avatar, styles: { thumb: '50x50#', small: '100x100#' }
  has_many :stories

  validates :avatar, attachment_presence: true
  validates_attachment_content_type :avatar, content_type: /\Aimage/
  validates_with AttachmentSizeValidator, attributes: :avatar, less_than: 1.megabytes
  validates :password, length: { in: 6..20 }
  validates :name, :email, :password, :password_confirmation, presence: true
  validates_uniqueness_of :email
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i


  def set_default_role
     self.add_role(:user)
  end
end
