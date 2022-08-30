class User < ApplicationRecord 
    validates :email, presence: true, uniqueness: true

    has_many :submitted_urls,
        class_name: :ShortendUrl,
        foreign_key: :submitter_id,
        primary_key: :id  

    has_many :visits, 
        class_name: :Visit, 
        primary_key: :id, 
        foreign_key: :visitor_id 

    has_many :visited_urls, 
        through: :visits, 
        source: :shortend_url

    


end 