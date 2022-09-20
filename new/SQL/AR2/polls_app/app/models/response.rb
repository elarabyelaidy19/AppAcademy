class Response < ApplicationRecord
    validates :user_id, :answer_choice_id, presence: true
    validate  :respondent_already_answered?, :respond_to_own_poll

    belongs_to :answer_choice     
    
    belongs_to :respondent,
        class_name: :User, 
        foreign_key: :user_id, 
        primary_key: :id

    has_one :question, 
        through: :answer_choice,
        source: :question 
     



    
    
    def sibiling_responses  
        self.question.responses.where.not(id: self.id)
    end  

    def  respondent_already_answered? 
        if sibiling_responses.any? { |sibiling| sibiling.user_id == self.user_id } 
            errors[:respondent] << "has already answerd"  
        end 
    end  

    
    
    def respond_to_own_poll 
        poll = self.question.poll 

        if poll.user_id == self.respondent.id 
            errors[:respondent] << "can not answer there questions" 
        end 
    end 
end
