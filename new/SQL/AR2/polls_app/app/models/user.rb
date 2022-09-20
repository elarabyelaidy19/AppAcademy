class User < ApplicationRecord

    validates :user_name, presence: true, uniqueness: true
    has_many :authored_polls,
        primary_key: :id, 
        foreign_key: :user_id, 
        class_name: :Poll 

    has_many :responses


    
end
