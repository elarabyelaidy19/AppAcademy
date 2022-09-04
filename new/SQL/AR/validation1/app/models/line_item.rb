class LineItem < ApplicationRecord 
    belongs_to :order

    validates :order, presence: true
end
