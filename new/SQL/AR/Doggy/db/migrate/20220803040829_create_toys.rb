class CreateToys < ActiveRecord::Migration[7.0]
  def change
    create_table :toys do |t|

      t.timestamps
    end
  end
end
