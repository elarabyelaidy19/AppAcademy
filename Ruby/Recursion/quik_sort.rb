def quik_sort(arr) 

  return arr if arr.length <= 1 

  pivot = [arr.first]
  left_side = arr[1..-1].select { |ele| ele < arr.first } 
  right_side = arr[1..-1].select { |ele| ele >= arr.first }
  quik_sort(left_side) + pivot + quik_sort(right_side)
end 

p quik_sort([3, 8, 8, 9, 2, 1, 6])
