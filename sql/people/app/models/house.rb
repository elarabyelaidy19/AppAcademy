class House < ApplicationRecord
  validates :address, presence: true

  has_many :residents, 
    primary_key: :id, 
    foreign_key: :house_id, 
    class: :Person
end 