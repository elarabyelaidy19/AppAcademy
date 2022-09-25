class ArtwoekShare < ApplicationRecord 
    validates :artwork_id, :viewer_id, presence: true

    validates :artwork_id, uniqueness: { scope: :viewer_id }

    belongs_to :viewer, 
        class_name: :User
    
    belongs_to :artwork

end
