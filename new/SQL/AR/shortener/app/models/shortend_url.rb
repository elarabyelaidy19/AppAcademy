class ShortendUrl < ApplicationRecord 
    
    validates :short_url, :long_url, :submitter_id, presence: true
    validates :short_url, uniqueness: true
    validate :no_spamming, :nonpremium_max


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

    has_many :taggings,  
        class_name: :Tagging, 
        foreign_key: :url_id, 
        primary_key: :id, 
        dependent: :destroy 

    has_many :tag_topics,
        through: :taggings,
        source: :tag_topic 

  
    def self.random_code
        loop do
            random_link = SecureRandom.urlsafe_base64(16)
            return random_link unless ShortendUrl.exists?(short_url: random_link)
        end
    end

    def self.create_for_user_and_long_url!(user, long_url)
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
        where('created_at > ?', 10.minute.ago)
        .distinct
        .count
    end 
  

    def no_spamming
        last_minute = ShortendUrl
            .where('created_at >= ?', 1.minute.ago)
            .where(submitter_id: submitter_id)
            .length

        errors[:maximum] << 'of five short urls per minute' if last_minute >= 5
    end  

    def nonpremium_max 
        return if User.find(self.submitter_id).premium

        number_of_urls = ShortendUrl
                .where(submitter_id: submitter_id)
                .length

        if number_of_urls >= 5
            errors[:Only] << 'premium members can create more than 5 short urls'
        end  
    end   



    def self.prune(n) 
        shortened_urls
            .joins(:submitter) 
            .joins('left join visits on visits.shortend_url_id = shortend_urls.id')
            .where("(shortend_urls.id IN (  
                    select shortend_urls.id 
                    from shortend_urls 
                    join visits on visits.shortend_url_id = shortend_urls.id  
                    group by shortend_urls.id 
                    having max(visits.created_at) < \'#{n.minute.ago}\'  

            ) OR ( 
                visits.id is null and shortend_urls.created_at < \'#{n.minute.ago}\'
            ))  AND users.premium = \'f\'") 
            .destroy_all
    end 
    
end 