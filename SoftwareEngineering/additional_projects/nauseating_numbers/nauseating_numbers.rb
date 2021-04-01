# strange_sums
# Write a method strange_sums that accepts an array of numbers as an argument.
# The method should return a count of the number of distinct pairs of elements that have a sum of zero.
# You may assume that the input array contains unique elements.

def strange_sums(array)
  count = 0 

  array.each_with_index do |ele_1, idx_1|
    array.each_with_index do |ele_2, idx_2|
      count += 1 if idx_2 > idx_1 && (ele_1 + ele_2) == 0
    end 
  end 
  count 
end 


p strange_sums([2, -3, 3, 4, -2])     # 2
p strange_sums([42, 3, -1, -42])      # 1
p strange_sums([-5, 5])               # 1
p strange_sums([19, 6, -3, -20])      # 0
p strange_sums([9])                   # 0


# pair_product
# Write a method pair_product that accepts an array of numbers and a product as arguments.
# The method should return a boolean indicating whether or not a pair of distinct elements in the array result in the product when multiplied together.
# You may assume that the input array contains unique elements.

def pair_product(array, product)

  array.each_with_index do |ele_1, idx_1|
    array.each_with_index do |ele_2, idx_2|
      if idx_2 > idx_1 && (ele_1 * ele_2) == product
        return true 
      end 
    end 
  end
  false  
end 



p pair_product([4, 2, 5, 8], 16)    # true
p pair_product([8, 1, 9, 3], 8)     # true
p pair_product([3, 4], 12)          # true
p pair_product([3, 4, 6, 2, 5], 12) # true
p pair_product([4, 2, 5, 7], 16)    # false
p pair_product([8, 4, 9, 3], 8)     # false
p pair_product([3], 12)             # false