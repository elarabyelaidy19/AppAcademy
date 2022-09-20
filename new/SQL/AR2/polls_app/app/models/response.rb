class Response < ApplicationRecord
    validates :user_id, :answer_choice_id, presence: true
    validate  :respondent_already_answered?, unless: -> { answer_choice.nil? }  
    validate  :respond_to_own_poll, unless: -> { answer_choice.nil? }

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

    def respondent_already_answered2? 
        sibiling_responses.exists?(user_id: self.user_id)
    end 



    private 

    def respond_to_own_poll 
        poll = self.question.poll 
        if poll.user_id == self.respondent.id 
            errors[:respondent] << "can not answer there questions" 
        end 
    end  

    def respond_to_own_poll2 
        poll_author_id = Poll.joins(questions: :answer_choices) 
                            .where('answer_choices.id = ?', self.answer_choice_id) 
                            .pluck('polls.user_id') 
                            .first 

        if poll_author_id = self.user_id 
            errors[:user_id] << 'this user has answered this question before'
        end 
    end 

end
