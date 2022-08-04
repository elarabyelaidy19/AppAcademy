require_relative 'questions_database' 
require_relative 'user'
require_relative 'reply'

class QuestionFollow 
    def self.followers_for_question_id(question_id) 
        followers = QuestionsDatabase.instance.execute(<<-SQL, question_id) 
            select fname, lname 
            from users u
            join questions q on u.id = q.author_id 
            where q.id = ?
        SQL
        followers.map { |follower| QuestionFollow.new(follower) }
    end 

    def self.followed_questions_for_user_id(user_id) 
        questions = QuestionsDatabase.instance.execute(<<-SQL, user_id) 
            select * 
            from questions q
            join question_follows qf on q.id = qf.question_id 
            where qf.user_id = ?
        SQL
    end 

    

end 