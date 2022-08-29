class ShortendUrl < ApplicationRecord 
    
    validates :short_url, :long_url, :submitter_id, presence: true
    validates :short_url, uniqueness: true
    
    belongs_to :submitter,
    primary_key: :id,
    class_name: :User,
    foreign_key: :submitter_id
  
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


end 