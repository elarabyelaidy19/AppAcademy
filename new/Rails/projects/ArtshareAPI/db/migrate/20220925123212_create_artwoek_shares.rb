class CreateArtwoekShares < ActiveRecord::Migration[7.0]
  def change
    create_table :artwoek_shares do |t|
      t.integer :artwork_id, null: false
      t.integer :viewer_id, null: false

      t.timestamps
    end

    add_index :artwoek_shares, :artwork_id 
    add_index :artwoek_shares, :viewer_id 
    add_index :artwoek_shares, [:viewer_id, :artwork_id], unique: true
  end
end
