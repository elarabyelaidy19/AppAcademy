class RemoveNameFromToys < ActiveRecord::Migration[7.0]
  def change
    remove_column :toys, :name, :string
  end
end
