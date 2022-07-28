require 'sqlite3'
require 'singleton' 

class PlayDBConnection < SQLite3::Database 
    include Singleton
    def initialize 
        super('./plays.db')
        self.type_translation = true 
        self.results_as_hash = true
    end 
end 


class Play 
    attr_accessor  :title, :year, :playwrights_id
    
    def self.all 
        data = PlayDBConnection.instance.execute('select * from plays') 
        data.map { |datanum| Play.new(datanum) }
    end 

    def initialize(options)
        @id = options['id'] 
        @title = options['title'] 
        @year = options['year'] 
        @playwrights_id = options['playwrights_id']
    end 

    def create  
        raise "#{self} alread exists" if @id 
        PlayDBConnection.instance.execute(<<-SQL, @title, @year, @playwrights_id) 
            insert into 
                plays (title, year, playwrights_id) 
            values 
                (?, ?, ?) 
        SQL
        @id = PlayDBConnection.instance.last_insert_row_id 
    end 

    def update
        raise "#{self} does not exists" unless @id 
        PlayDBConnection.instance.execute(<<-SQL, @title, @year, @playwrights_id, @id) 
            update 
                plays 
            set
                title = ?, year =  ?, playwrights_id =  ?
            where 
                id = ? 
        SQL
    end 



end