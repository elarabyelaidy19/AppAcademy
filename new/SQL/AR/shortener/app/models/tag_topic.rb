class TagTopic < ApplicationRecord 
    validates :topic, presence: true

    has_many :taggings,
    primary_key: :id,
    foreign_key: :tag_topic_id,
    class_name: :Tagging,
    dependent: :destroy

    has_many :shortend_urls,
        through: :taggings,
        source: :shortend_url
    

    def popular_links 
        shortend_urls.joins(:visits)
        .group(:short_url, :long_url)
        .order('COUNT(visits.id) DESC')
        .select('long_url, short_url, COUNT(visits.id) as number_of_visits')
        .limit(5) 
    end 

end
