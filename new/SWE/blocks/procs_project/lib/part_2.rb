def reverser(str, &proc) 
    proc.call(str.reverse)
end 


def word_changer(str, &proc) 
    strs = str.split(" ") 
    res = []
    strs.each do |s| 
        res << proc.call(s) 
    end 
    res.join(" ")
end 


def greater_proc_value(n, proc_1, proc_2) 
    res1 = proc_1.call(n) 
    res2 = proc_2.call(n) 
    res1 > res2 ? res1 : res2
end 


def and_selector(arr, proc_1, proc_2) 
    res = [] 
    arr.each do |ele| 
        res << ele if (proc_1.call(ele) && proc_2.call(ele))  
    end 
    res
end 


def alternating_mapper(arr, proc_1, proc_2) 
    res = [] 
    arr.each_with_index do |e, i| 
        i.odd? ? res << proc_2.call(e) : res << proc_1.call(e) 
    end 
    res
end 