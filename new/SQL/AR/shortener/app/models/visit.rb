class Visit < ApplicationRecord 

    validates :shortend_url, :visitor , presence: true

    belongs_to :visitor, 
        primary_key: :id, 
        foreign_key: :visitor_id, 
        class_name: :User  

    belongs_to :shortend_url 
    
    

    def self.record_visit!(user, shortend_url) 
        Visit.create!(visitor_id: user.id, shortend_url_id: shortend_url.id)
    end 



    
end
