class Question < ApplicationRecord
    validates :text, :poll_id, presence: true

    
    has_many :answer_choices 
    belongs_to :poll 
    has_many :responses, 
        through: :answer_choices, 
        source: :responses 


    def results_not_optimized 
        answer_choices = self.answer_choices 
        responses = {} 
        answer_choices.each do |answer_choice| 
            responses[answer_choice.text] = answer_choice.responses.count 
        end 
        responses
    end  


    def results_optimized 
        answer_choices = self.answer_choices.includes(:responses) 
        results = {}
        answer_choices.each do |answer_choice| 
            results[answer_choice.text] = answer_choice.responses.length 
        end 
        results
    end 
end
