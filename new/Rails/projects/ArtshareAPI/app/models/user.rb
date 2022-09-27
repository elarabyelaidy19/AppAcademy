class User < ApplicationRecord 
    validates :username, uniqueness: true, presence: true

    has_many :artworks, 
        dependent: :destroy, 
        foreign_key: :artist_id  

    has_many :artwoek_shares,
        dependent: :destroy,
        foreign_key: :viewer_id

    has_many :shared_works,
        through: :artwoek_shares,
        source: :artwork


    has_many :comments, dependent: :destroy

    has_many :likes 

    has_many :liked_comments,
        through: :likes,
        source: :likeable,
        source_type: 'Comment'
    
    has_many :liked_artworks,
        through: :likes,
        source: :likeable,
        source_type: 'Artwork' 


    def favorite_artworks 
        artworks.where(favorite: true) 
    end 

    def favorite_shared 
        shared_works.where('artwoek_shares.favorite = true')
    end 
end 

