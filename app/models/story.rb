class Story < ActiveRecord::Base
  validates :title, :description, presence: true
end
