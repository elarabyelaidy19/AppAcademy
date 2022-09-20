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
            responses[answer_choice.answer_choice] = answer_choice.responses.count 
        end 
        responses
    end  


    def results_optimized 
        answer_choices = self.answer_choices.includes(:responses) 
        results = {}
        answer_choices.each do |answer_choice| 
            results[answer_choice.answer_choice] = answer_choice.responses.length
        end 
        results
    end  


    # ============================================================================ 

    def results_by_sql 
        acs = AnswerChoice.find_by_sql([<<-SQL, id]) 
            select answer_choice.answer_choice, count(responses.id) as num_responses 
            from answer_choice 
            left outer join responses on answer_choice.id = responses.answer_choice_id 
            where answer_choices.question_id = ?  
            group by answer_choices.id
        SQL

        acs.inject({}) do |res, ac| 
            results[ac.answer_choice] = ac.num_responses; results 
        end
    end


    def results_by_AR 
        acs = self.answer_choices
                  .select('answer_choices.answer_choice, count(responses.id) as num_responses')
                  .left_outer_joins(:responses)
                  .group('answer_choices.id') 

        acs.inject({}) do |results, ac| 
            results[ac.answer_choice] = ac.num_responses; results
        end 
    end 
end
