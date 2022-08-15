class House < ApplicationRecord 
    has_many :people 
    validates :address, presence: true
end
