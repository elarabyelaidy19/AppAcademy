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
        employee_salary = @salaries[employee.title] 
        if @funding > employee_salary  
            employee.pay(employee_salary) 
            @funding -= employee_salary 
        else 
            raise "no more funding" 
        end 
    end 

    def payday
        @employees.each { |employee| self.pay_employee(employee) }
    end 

    def average_salary 
        salaries = 0
        @employees.each do |emp| 
            salaries += @salaries[emp.title] if @salaries.has_key?(emp.title)  
        end 
        salaries / @employees.size
    end 

    def close 
        @employees.clear and @funding = 0 
    end  

    def acquire(startup_2) 
        @funding += startup_2.funding 
        startup_2.salaries.each do |title, salary| 
            if !@salaries.has_key?(title) 
                @salaries[title] = salary 
            end 
        end  
        @employees += startup_2.employees 
        startup_2.close
    end 
end
