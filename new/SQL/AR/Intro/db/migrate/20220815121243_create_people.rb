class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name 
      t.integer :house_id

      t.timestamps
    end
  end
end
