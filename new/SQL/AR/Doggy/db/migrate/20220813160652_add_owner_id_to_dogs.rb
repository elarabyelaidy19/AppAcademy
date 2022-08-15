class AddOwnerIdToDogs < ActiveRecord::Migration[7.0]
  def change 
    add_column :dogs, :owner_id, :integer
  end
end
