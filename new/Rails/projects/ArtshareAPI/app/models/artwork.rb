class Artwork < ApplicationRecord 
    validates :artist_id, :image_url, presence: true
    validates :title, uniqueness: { scope: :artist_id,
        message: "this name is already taken!" } 
    validates :image_url, uniqueness: true

    
    belongs_to :artist, 
        class_name: :User, 
        foreign_key: :artist_id 

    has_many :artwoek_shares

    has_many :shared_viewers,
        through: :artwoek_shares, 
        source: :viewer




    has_many :comments, dependent: :destroy

    has_many :likes, as: :likeable 

    has_many :liked_users, 
        through: :likes, 
        source: :user
    
    has_many :artwork_collections 


    def self.artworks_for_user_id(user_id) 
        Artwork.left_outer_joins(:artwoek_shares) 
            .where('(artworks.artist_id= :user_id) or (artwork_shares.viewer_id = :user_id', user_id: user_id)
            .distinct 
    end 

    def self.artworks_for_collection_id(collection_id) 
        Artwork.joins(:artwork_collections).where(artwork_collections: { collection_id: collection_id }) 
    end  
end
