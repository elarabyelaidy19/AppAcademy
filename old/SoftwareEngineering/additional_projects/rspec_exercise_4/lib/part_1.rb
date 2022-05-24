def my_reject(array, &prc)
  new_array = []

  array.each do |ele|
    array << ele if !prc.call(ele)
  end 

  new_array
end 


def my_one(array, &prc)
  array.count(&prc) == 1 
end 

def hash_select(hash, &prc)
  hash = Hash.new(0)

  hash.each do |k, v|
    hash[k] = v if prc.call(k, v)
  end 

  hash 
end 

def xor_select(array, prc_1, prc_2)
  array.select do |ele|
    (prc_1.call(ele) || prc_2.call(ele)) && !(prc_1.call(ele) && prc_2.call(ele))
  end 
end 

def proc_count(val, procs)
  procs.count { |prc| prc.call(val) }
end 