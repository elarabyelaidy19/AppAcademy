class AddColorToToys < ActiveRecord::Migration[7.0]
  def change
    add_column :toys, :color, :string
  end
end
