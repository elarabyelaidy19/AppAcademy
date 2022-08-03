class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :name, index: { unique: true, name: 'owner_index' }

      t.timestamps
    end
  end
end
