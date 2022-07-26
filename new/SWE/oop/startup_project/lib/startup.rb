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

    def hire(name, title)  
        if self.valid_title?(title) 
            @employees << Employee.new(name, title) 
        else 
            raise "invalid title" 
        end 
    end 

    def size 
        @employees.size 
    end 

    def pay_employee(employee)
        
    end 
end
