class Dog < ApplicationRecord 
    has_many :toys
    validates :name, presence: true 
    validates_associated :toys

    def self.bench(name) 
        start = Time.now 
        Dog.where(name: name) 
        (Time.now - start) * 1000
    end
end