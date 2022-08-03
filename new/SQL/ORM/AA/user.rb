require_relative './questions_database' 
require_relative './reply'
require_relative './question_follow'



class User 
    def initialize(options) 
        @id = options['id'] 
        @fname = options['fname'] 
        @lname = options['lname']
    end 

    def self.find_by_name(fname, lname) 
        names = QuestionsDatabase.instance.execute(<<-SQL, fname, lname) 
            select * 
            from users 
            where fname = ? or lname = ?
        SQL

        names.map { |name| User.new(name) }
    end 


    def self.find_by_id(id) 
    users = QuestionsDatabase.instance.execute(<<-SQL, id)
      SELECT 
        * 
      FROM 
        users 
      WHERE 
        id = ? 
    SQL

    users.map { |user| User.new(user) }
  end

end 