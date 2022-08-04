require_relative 'questions_database' 
require_relative 'user'
require_relative 'reply'
require_relative 'question_follow'

class Questions 
    attr_accessor :title, :body, :author_id 
    attr_reader :id

    def initialize(options) 
        @id = options['id']
        @title = options['title']
        @body = options['body']
        @author_id = options['author_id'] 
    end 

    def self.find_by_id(id) 
        raise "#{self} does no texists" unless @id 
        res = QuestionsDatabase.instance.execute(<<-SQL, id) 
            select id 
            from questions 
            where id = ?
        SQL
        res.map { |re| Questions.new(re) }
    end 

    def self.find_by_author_id(author_id) 
        author_ids = QuestionsDatabase.instance.execute(<<-SQL, author_id) 
            select * 
            from questions 
            where author_id = ?
        SQL
        author_ids.map { |author_id| Questions.new(author_id) }
    end     

    def author  
        User.find_by_id(@author_id)
    end

    def replies 
        Reply.find_by_question_id(@id)
    end 

    def question_followers
        QuestionFollow.followers_for_question_id(@id)
    end 

end 
