class User < ApplicationRecord 
    validates :email, presence: true, uniqueness: true

    has_many :submitted_urls,
    class_name: :ShortendUrl,
    foreign_key: :submitter_id,
    primary_key: :id 

end 