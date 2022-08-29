class AddEmailToUsers < ActiveRecord::Migration[7.0]
  def change 
    add_column :users, :email, :string, null: false
    add_index :users, :email
  end
end
