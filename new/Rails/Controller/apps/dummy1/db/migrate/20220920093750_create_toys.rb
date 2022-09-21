class CreateToys < ActiveRecord::Migration[7.0]
  def change
    create_table :toys do |t|
      t.string :name, null: false
      t.string :toy_type, null: false
      t.integer :cat_id, null: false

      t.timestamps
    end
  end
end
