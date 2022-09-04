class Person < ApplicationRecord 
    validates :name, presence: true 
    validates :name, length: { is: 5 }, allow_blank: true
end
