require "employee"

class Startup
    attr_reader :name, :funding, :salaries, :employees
    
    def initialize(name, funding, salaries)
        @name = name 
        @funding = funding 
        @salaries = salaries 
        @employees = []
    end 

    def valid_title?(title)
        @salaries.has_key?(title)
    end 

    def >(startup_2) 
        self.funding > startup_2.funding 
    end 

    def hire
end
