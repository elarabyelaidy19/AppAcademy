class ShortendUrl < ApplicationRecord 
    
    validates :short_url, :long_url, :submitter_id, presence: true
    validates :short_url, uniqueness: true
    
    belongs_to :submitter,
        primary_key: :id,
        class_name: :User,
        foreign_key: :submitter_id 

    has_many :visits, 
        primary_key: :id, 
        foreign_key: :shortend_url_id,
        class_name: :Visit, 
        dependent: :destroy 

    has_many :visitors, 
        through: :visits, 
        source: :visitor

    
  
    def self.random_code
        loop do
            random_link = SecureRandom.urlsafe_base64(16)
            return random_link unless ShortendUrl.exists?(short_url: random_link)
        end
    end

    def self.create_short!(user, long_url)
        ShortendUrl.create!(
            submitter_id: user.id,
            long_url: long_url,
            short_url: ShortendUrl.random_code
        ) 
    end

    def num_clicks 
        visits.count
    end 

    def num_uniques
        visits.select('visitor_id').distinct.count
    end 

    def num_recent_uniquness 
        visits.select('visitor_id').
        where('created_at > ?', 10.minutes.ago)
        .distinct
        .count
    end 
  

end 