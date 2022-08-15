class Owner < ApplicationRecord 
    has_many :dogs 
    has_many :toys, through: :dogs
end
