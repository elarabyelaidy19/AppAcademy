class AddIndexToOwner < ActiveRecord::Migration[7.0]
  def change 
    add_index :kitties, :home_page_url

    say "created index on kitties", true

    say_with_time 'waiting for a while' do 
      sleep 10
      100
    end 
  end
end
