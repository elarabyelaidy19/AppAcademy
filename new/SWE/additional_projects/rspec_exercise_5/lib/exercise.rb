def zip (*arr)
    len = arr.first.length
    (0...len).map do |i| 
        arr.map { |ar| ar[i] } 
    end   
end 

def prizz_proc(array, prc_1, prc_2)
     array.select do |el|
        (prc_1.call(el) && !prc_2.call(el)) || (!prc_1.call(el) && prc_2.call(el))
    end 
end 


def zany_zip(*arr) 
    len = arr.map(&:length).max
    (0...len).map do |i| 
        arr.map { |ar| ar[i] } 
    end 
end 


def maximum(arr, &prc)
    return nil if arr.empty? 
    max = arr[0] 
    arr.each do |ele| 
        max = ele if prc.call(ele) >= prc.call(max) 
    end 
    max 
end 


def my_group_by(arr, &prc)
    hash = Hash.new { |h, k| h[k] = [] } 
    arr.each do |ele| 
        el = prc.call(ele)
        hash[el] << ele   
    end 
    hash 
end 


def max_tie_breaker(array, tie_breaker, &prc)
    return nil if array.empty?
    max = array.first
    array.each do |el|
        result_el = prc.call(el)
        result_max = prc.call(max)
        if result_el > result_max
            max = el
        elsif result_el == result_max && tie_breaker.call(el) > tie_breaker.call(max)
            max = el
        end
    end
    max
end


def silly_syllables(sentence)
    words = sentence.split(' ') 
    new_words = words.map do |word| 
        count = vowel_indices(word).length 
        if count < 2 
            word 
        else 
            change_word(word) 
        end 
    end 
    new_words.join(' ')
end 

def vowel_indices(word)
    indices = [] 
    vowels = "aioue"
    word.each_char.with_index do |c, i|  
        indices << i if vowels.include?(c) 
    end 
    indices
end 

def change_word(word) 
    indices = vowel_indices(word)
    word[indices.first..indices.last]
end 
