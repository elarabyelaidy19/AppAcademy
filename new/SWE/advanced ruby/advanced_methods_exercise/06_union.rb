# Write a method, union, that accepts any number of arrays as arguments.
# The method should return an array containing all elements of the given arrays.

def union(*args) 
    args.flatten
end 

def union(*args) 
    args.inject { |all, ele| all + ele }  #  acc = ["a", "b"] + ele = [1, 2, 3]
end 

p union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]
