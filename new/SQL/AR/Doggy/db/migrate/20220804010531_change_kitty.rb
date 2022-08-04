class ChangeKitty < ActiveRecord::Migration[7.0]
   def up

    add_column :kitties, :home_page_url, :string
    rename_column :owners, :name, :name_address
  end

  def down
    rename_column :owners, :name_address, :name
    remove_column :kitties, :home_page_url
  end
end
