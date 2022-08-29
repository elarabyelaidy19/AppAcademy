class RenameUserIndex < ActiveRecord::Migration[7.0]
  def change 
    remove_index :shortened_urls, :user_id
  end
end
