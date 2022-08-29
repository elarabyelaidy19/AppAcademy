class AddUserIdToShortenedUrl < ActiveRecord::Migration[7.0]
  def change 
    add_reference :shortened_urls, :user, foreign_key: true
  end
end
