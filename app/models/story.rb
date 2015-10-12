class Story < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
  has_and_belongs_to_many :users
  
  validates :title, :description, presence: true
  validates :title, uniqueness: :true

  def should_generate_new_friendly_id?
    title_changed? || super
  end
end
