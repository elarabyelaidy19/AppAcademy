def all_words_capitalized?(arr) 
    arr.all? { |word| word.capitalize == word }
end 

def no_valid_url?(arr) 
    ends = ['.com', '.net', '.io', '.org'] 
    arr.none? do |url| 
        ends.any? { |ending| url.end_with?(ending) } 
    end 

end 


def any_passing_students?(arr)
    arr.any? { |student| (student[:grades].sum / student[:grades].count) > 75 }
end 