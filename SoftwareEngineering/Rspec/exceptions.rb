num = 0

10 / num # zero division

puts "finished"

# exception

num = 0 

begin 
  puts "divising by 10 #{num}"
  ans = 10 / num   # jumping to rescue if there was error here 
  puts "the answer is #{ans}"
rescue 
  puts "there was an error with that division"
end 

puts "-----"
puts "finished"

# ===============================================

#  Exceptions 

def format_name(first, last)
  first.capitalize + " " + last.capitalize
end 

format_name ("elaraby", "elaidy") 
format_name(23, false)  # exception 

# ===============================================

# Raising exception

def format_name(first, last)
  if (!first.instanceof?(string) && last.instanceof(string))
    raise "arguments must be string"
  end 

  first.capitalize + " " + last.capitalize
end 

first_name = 23
last_name = false 

begin 
  puts format_name(first_name, last_name)
rescue
  puts "there was an exception"
end 


