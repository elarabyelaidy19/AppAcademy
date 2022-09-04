class AddNameToPepole < ActiveRecord::Migration[7.0]
  def change 
    add_column :people, :name, :string
  end
end
