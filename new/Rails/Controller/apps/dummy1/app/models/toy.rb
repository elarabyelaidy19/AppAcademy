class Toy < ApplicationRecord 
    TYPES = [ 
        "string", 
        "yarnball", 
        "mouse"
    ]

    validates :name, :toy_type, :cat_id, presence: true 
    validates :toy_type, inclusion: TYPES

    belongs_to :cat
end
