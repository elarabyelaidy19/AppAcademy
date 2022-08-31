class Tagging < ApplicationRecord 
    
    belongs_to :tag_topic,
    primary_key: :id,
    foreign_key: :tag_topic_id,
    class_name: :TagTopic

  belongs_to :shortend_url,
    primary_key: :id,
    foreign_key: :url_id,
    class_name: :ShortendUrl
end
