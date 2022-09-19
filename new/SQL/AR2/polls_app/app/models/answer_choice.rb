class AnswerChoice < ApplicationRecord
    
    validates :answer_choice, :question_id, presence: true


    belongs_to :question 
    has_many :responses, 
        primary_key: :id, 
        foreign_key: :answer_choice_id, 
        class_name: :Response
end
