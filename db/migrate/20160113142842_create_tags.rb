class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
    end
    create_table :stories_tags, :id => false do |t|
      t.integer :story_id, :tag_id
	end
  end
end
	