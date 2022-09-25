class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false, uniquueness: true
      
      t.timestamps
    end
  end
end
