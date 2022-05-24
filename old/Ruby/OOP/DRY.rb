class Minnow
  def eat
    puts "eat eat eat"
  end
end

class Shark
  def eat
    puts "eat eat eat"
  end
end

# Refactoring to 

class Fish
  def eat
    puts "eat eat eat"
  end
end

class Minnow < Fish
end

class Shark < Fish
end

# applaying generic code 

class Employee
  def wage
    20_000
  end
end

class Manager < Employee
  def wage
    50_000
  end
end

class CEO < Manager
  def wage
    1_000_000
  end
end

# calculate the total salary of many employees
def total_salary(employees)
  total = 0
  employees.each do |employee|
    # Don't know/care what kind of `Employee` (regular, Manager,
    # or CEO) this is. We can treat them all the same.
    total += employee.wage
  end
end