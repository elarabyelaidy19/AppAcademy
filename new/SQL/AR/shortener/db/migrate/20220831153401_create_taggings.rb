class CreateTaggings < ActiveRecord::Migration[7.0]
  def change
    create_table :taggings do |t| 
      t.string :url_id, null: false
      t.string :tag_topic_id, null: false
      t.timestamps
    end

    add_index :taggings, :url_id 
    add_index :taggings, :tag_topic_id
  end
end
