class Person < ApplicationRecord 
  validates :name, :house, presence: true 

  belongs_to :house, 
    primary_key, :id, 
    foreign_key, :house_id, 
    class: :House
end