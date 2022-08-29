class ChangeTableName < ActiveRecord::Migration[7.0]
  def change 
    rename_table :shorturls, :shortend_urls
  end
end
