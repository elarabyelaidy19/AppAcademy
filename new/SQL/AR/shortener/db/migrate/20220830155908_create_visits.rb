class CreateVisits < ActiveRecord::Migration[7.0]
  def change
    create_table :visits do |t|
      t.string :shortend_url_id, null: false 
      t.string :visitor_id, null: false 


      t.timestamps
    end

    add_index :visits, :shortend_url 
    add_index :visits, :visitor_id
  end

end
