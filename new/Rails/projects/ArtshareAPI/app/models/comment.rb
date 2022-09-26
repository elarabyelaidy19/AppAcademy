class Comment < ApplicationRecord 

    validates :body, :user_id, :artwork_id, presence: true

    belongs_to :author, 
        class_name: :User, 
        foreign_key: :user_id 
        
    belongs_to :artwork

    has_many :likes, as: :likeable 

    has_many :liked_users, 
        through: :likes, 
        source: :user

end
