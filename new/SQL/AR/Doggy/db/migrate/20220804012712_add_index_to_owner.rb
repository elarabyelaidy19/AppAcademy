class AddIndexToOwner < ActiveRecord::Migration[7.0]
  def change 
    add_index :kitties, :home_page_url, unique: true
  end
end
