class CreateJoinTableDogToy < ActiveRecord::Migration[7.0]
  def change
    create_join_table :dogs, :toys do |t|
      # t.index [:dog_id, :toy_id]
      # t.index [:toy_id, :dog_id]
    end
  end
end
