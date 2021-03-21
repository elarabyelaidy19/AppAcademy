
def say_hello
  message ="hello" # local variable 
  p message 
end 


message = "hello"

def say_hello
  p message  # local variable out of the scope 
end 

$globalVariable = "i'm a global variable" # dollar sign make me global 

def say_hello 
  p $globalVariable
end 

# constants 
Constant = "foo" # this is constant and can be a global variabe
Constant = "elaraby"  # out warnning constants cannot reassigned 
Constant.upcase # constants can be mutate

# block scopes 

message = "hello" 
3.times do   # blocks dos'nt have its own scope 
  p message 
end 






