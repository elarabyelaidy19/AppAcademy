# Write a method, my_rotate!(array, amt), that accepts an array and a number as args.
# The method should mutate the array by rotating the elements 'amt' number of times. 
# When given a positive 'amt', a single rotation will rotate left, causing the first element to move to the last index
# When given a negative 'amt', a single rotation will rotate right, causing the last element to move to the first index
# The method should return the given array.
# Do not use the built-in Array#rotate
# 
# Note: this method must MUTATE the input array. This means that the object_id of the input array should be identical
# to the object_id of the returned array. The exact object_ids you get back don't matter. We just want the ids
# to be the same before and after calling your method.

=begin 
def my_rotate!(arr, k)
    return arr if arr.length <= 1 
    k = k % arr.length 
    reverse(arr, 0, arr.length-1) 
    reverse(arr, 0, k-1) 
    reverse(arr, k, arr.length-1) 
    arr
end

def reverse(arr, l, r) 
    while r > l 
        arr[l], arr[r] = arr[r], arr[l] 
        l += 1 
        r -= 1 
    end 
end 

=end 


def my_rotate!(arr, k) 
    if k > 0
        k.times do  
            ele = arr.shift 
            arr << ele
        end 
    else 
        (-k).times do  
            ele = arr.pop 
            arr.unshift(ele)
        end 
    end
    arr 
end 
array_1 = ["a", "b", "c", "d"]
p array_1.object_id                 # => 70354216023780
result_1 = my_rotate!(array_1, 2)
p result_1                          # => ["c", "d", "a", "b"]
p result_1.object_id                # => 70354216023780


array_2 = ["NOMAD", "SOHO", "TRIBECA"]
p array_2.object_id                 # => 70354216019660
result_2 = my_rotate!(array_2, 1)
p result_2                          # => ["SOHO", "TRIBECA", "NOMAD"]
p result_2.object_id                # => 70354216019660


array_3 = ["a", "b", "c", "d"]
p array_3.object_id                 # => 70354216016500
result_3 = my_rotate!(array_3, -3)
p result_3                          # => ["b", "c", "d", "a"]
p result_3.object_id                # => 70354216016500
