#Further exploration using #each_with_object

def running_total(array)
  
  running_total_array = []
  
  array.reduce(0) do |memo, n|
    running_total_array << (memo + n)
    memo + n
  end
  
  running_total_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

