class CreateShorturl < ActiveRecord::Migration[7.0]
  def change
    create_table :shorturls do |t|
      t.string :short_url, null: false 
      t.string :long_url, null: false  
      t.string :submitter_id, null: false  
      
      
      t.timestamps
    end 

    add_index :shorturls, :short_url, unique: true 
    add_index :shorturls, :submitter_id
  end

end
