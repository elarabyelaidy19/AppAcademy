class Holiday < ApplicationRecord 
    validates :name, uniquness: { 
        scope: :year, 
        message: 'should happen once a year'
    }
end
