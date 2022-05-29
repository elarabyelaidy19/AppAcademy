# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
def compress_str(str) 
    h = {} 
    str.chars.each do |c| 
        h.include?(c) ? h[c] += 1 : h[c] = 1
    end 
    res = ""
    h.each do |k, v| 
        h[k] > 1 ? res.concat("#{v}#{k}") : res.concat("#{k}") 
    end 
    res
end 


p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
