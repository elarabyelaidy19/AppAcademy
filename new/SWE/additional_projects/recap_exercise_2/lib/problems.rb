# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple
# of both of the given numbers
def least_common_multiple(num_1, num_2)
    (1..100**10).each do |n| 
        return n if n % num_1 == 0 && n % num_2 == 0 
    end  
end


# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    str.chars.each_cons(2).map(&:join).inject(Hash.new(0)) { |h, k| h[k]+=1; h}.max_by { |_, v| v}.first
end 

class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse 
        h = {} 
        self.each do |k, v| 
            h[v] = k  
        end 
        h
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        h = {}
        cnt = 0
        self.each.with_index do |n, i| 
            diff = num - n 
            if h.include?(diff) 
                cnt+=1 if h.include?(diff) 
            end 
            h[n] = i  
        end 
        cnt
    end

    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    #
    # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
    # two parameters, which represents the two elements in the array being compared.
    # If the block returns 1, it means that the second element passed to the block
    # should go before the first (i.e. switch the elements). If the block returns -1,
    # it means the first element passed to the block should go before the second
    # (i.e. do not switch them). If the block returns 0 it implies that
    # it does not matter which element goes first (i.e. do nothing).
    #
    # This should remind you of the spaceship operator! Convenient :)
    def bubble_sort(&prc)
        res = [] 
        prc ||= Proc.new { |a, b| a <=> b } 
        swapped = true 
        while swapped
             swapped = false
            (0...self.length-1).each do |i| 
                if prc.call(self[i], self[i+1]) == 1
                    self[i], self[i+1] = self[i+1], self[i] 
                    swapped = true
                end 
            end 
        end  
        self 
    end
end
