class AddIndexToDogTable < ActiveRecord::Migration[7.0]
  def change 
    add_index :dogs, :name
  end
end
