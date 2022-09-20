class User < ApplicationRecord

    validates :user_name, presence: true, uniqueness: true
    has_many :authored_polls,
        primary_key: :id, 
        foreign_key: :user_id, 
        class_name: :Poll 

    has_many :responses


    def completed_polls 
        Poll.find_by_sql(<<-SQL) 
            select poll.* 
            from poll 
            join  question on polls.id = questions.poll_id 
            join answer_choices on question.id = answer_choices.question_id 
            left outer join ( 
                select * 
                from responses 
                where user_id = #{self.id} 
            ) as responses on answer_choices.id = answer_choice_id 
            group by polls.id 
            having count(distinct questions.id) = count(responses.id)
        SQL
    end 



    def completed_polls_AR 
        polls_with_complete_count
            .having('count(distinct questions.id) = count(responses.id)')
    end 

    def uncompleted_polls 
        polls_with_complete_count
            .having('count(distinct questions.id) = count(responses.id)') 
            .having('count(responses.id) > 0')

    end 


    private 

    def polls_with_complete_count 
        joins_sql = (<<-SQL) 
            left outer join ( 
                select * 
                from responses 
                where user_id = #{self.id} 
            )
        SQL

        Poll.joins(questions: :answer_choices) 
            .joins(joins_sql) 
            .group('polls.id')
    end 

end
