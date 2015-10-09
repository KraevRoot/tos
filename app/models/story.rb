class Story < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use:  [:slugged, :history]
  validates :title, :description, presence: true
end
