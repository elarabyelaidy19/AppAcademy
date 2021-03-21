
# blocks used usually with enumerables.
# Blocks are somewhat similar to methods in that both can contain lines of code as well as take in parameters.
# important distinction to make is that the **return keyword pertains to methods, not blocks**.
# Blocks can accept parameters if we name them between pipes (|param_1, param_2, etc.|).
 

# one line block 

[1, 2, 6].map { |ele| -(ele * 2)}

# multiple lines blocks 

[1, 4, 6].map do |ele|
  doubled = ele * 2
  -doubled 
end  


# using method as Blocks

[1, 3, 5].select { |ele| ele.even? }

["A", "B", "c"].map {|char| char.downcase }

# we can refactoring those methods using &:  

[1, 3, 5].select (&:even?) 

["A", "B", "c"].map  (&:downcase)

# :even? is a sympol refering to the method number.even?
# & to convert the method into an object that we can pass into map  


array.map { |block_parameter| block_parameter.method } >>> array.map (&:method)

#  The method you choose should be compatible with your data
