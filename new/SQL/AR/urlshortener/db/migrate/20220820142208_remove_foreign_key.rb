class RemoveForeignKey < ActiveRecord::Migration[7.0]
  def change 
    remove_reference :shortened_urls, :user
  end
end
