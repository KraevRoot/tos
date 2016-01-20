class Story < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  belongs_to :user

  attr_accessor :tag_names

  has_and_belongs_to_many :tags 

  validates :title, :description, presence: true
  validates :title, uniqueness: :true

  def should_generate_new_friendly_id?
    title_changed? || super
  end


  before_create :associate_tags

  private
  def associate_tags
    if tag_names
      tag_names.split(" ").each do |name|
        self.tags << Tag.where(name: name).first_or_create
      end
    end
  end
end
