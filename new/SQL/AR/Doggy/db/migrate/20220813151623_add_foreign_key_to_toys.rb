class AddForeignKeyToToys < ActiveRecord::Migration[7.0]
  def change 
    add_column :toys, :dog_id, :integer
  end 
end
