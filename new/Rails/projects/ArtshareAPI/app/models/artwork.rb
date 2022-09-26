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

end
