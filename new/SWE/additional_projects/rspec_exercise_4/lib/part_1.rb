
def my_reject(arr, &prc)
    res = [] 
    arr.each do |ele| 
        arr << ele if !prc.call(ele) 
    end 
    res 
end  

p my_reject([7,6,5,4]) { |n| n.even? }

def my_one?(arr, &prc)  
    count = 0 
    arr.each do |ele| 
        count += 1 if prc.call(ele) 
    end 
    count == 1 
end 

def hash_select(hash, &prc) 
    h = {} 
    hash.each do |k, v| 
        h[k] = v if prc.call(k, v) 
    end 
    h 
end 


def xor_select(arr, prc1, prc2) 
    res = [] 
    arr.each do |ele| 
        res << ele if (prc1.call(ele) && !prc2.call(ele)) || (!prc1.call(ele) && prc2.call(ele)) 
    end 
    res 
end 

def proc_count(val, procs) 
    procs.count { |prc| prc.call(val) }
end 
