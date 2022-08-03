require_relative 'questions_database' 
require_relative 'user'
require_relative 'reply'
require_relative 'question_follow'


class Reply 

    attr_accessor :subject_question_id, :body, :parent_reply_id, :user_id 
    attr_reader :id

    def initialize(options) 
        @id = options['id']
        @body = options['body']
        @subject_question_id = options['subject_question_id']
        @user_id = options['user_id']
        @parent_reply_id = options['parent_reply_id']
    end 

    def self.find_by_id(id) 
        replies = QuestionsDatabase.instance.execute(<<-SQL, id) 
            select * 
            from replies
            where id = ?
        SQL

        replies.map { |reply| Reply.new(reply) }
    end     

    def self.find_by_user_id(user_id) 
        replies = QuestionsDatabase.instance.execute(<<-SQL, user_id) 
            select * 
            from replies
            where user_id = ?
        SQL

        replies.map { |reply| Reply.new(reply) }
    end
    
    def self.find_by_question_id(question_id) 
        replies = QuestionsDatabase.instance.execute(<<-SQL, subject_question_id) 
            select * 
            from replies
            where subject_question_id = ? 
        SQL

        replies.map { |reply| Reply.new(reply) }
    end  

    def authored_questions 
        Questions.find_by_author_id(@id)
    end 

    def authored_replies 
        Reply.find_by_user_id(@id)
    end 

    def author 
        User.find_by_user_id(@user_id)
    end 

    def question
        Questions.find_by_question_id(@subject_question_id)
    end

    def parent_reply 
        Reply.find_by_id(@parent_reply_id)
    end 

    def child_replies 
        childe_replies = QuestionsDatabase.instance.execute(<<-SQL, @id) 
            select * 
            from replies
            where parent_reply_id = ?
        SQL

        childe_replies.map { |child| Reply.new(child) }
    end 

end 