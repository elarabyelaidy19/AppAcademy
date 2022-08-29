class CreateShortenedUrl < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.string :short_url, unique: true 
      t.string :long_url, unique: true 
      t.timestamps
    end
    
    add_index :shortened_urls, :long_url, unique: true
  end
end
