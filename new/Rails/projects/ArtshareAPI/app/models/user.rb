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

end

