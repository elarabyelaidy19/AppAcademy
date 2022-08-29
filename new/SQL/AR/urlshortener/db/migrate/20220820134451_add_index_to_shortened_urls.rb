class AddIndexToShortenedUrls < ActiveRecord::Migration[7.0]
  def change 
    add_index :shortened_urls, :long_url
  end
end
