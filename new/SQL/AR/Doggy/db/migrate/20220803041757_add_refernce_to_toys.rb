class AddRefernceToToys < ActiveRecord::Migration[7.0]
  def change
    add_column :toys, :name, :string
    add_index :toys, :name
  end
end
