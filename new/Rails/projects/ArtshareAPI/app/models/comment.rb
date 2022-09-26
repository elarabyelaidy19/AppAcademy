class Comment < ApplicationRecord 

    validates :body, :user_id, :artwork_id, presence: true

    belongs_to :author, 
        class_name: :User, 
        foreign_key: :user_id 
        
    belongs_to :artwork

end
