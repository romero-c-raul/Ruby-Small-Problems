=begin
#First attempt

ALGORITHM
- Accept an array
- Create a new empty array

- Iterate through input array and push elements into new array
  starting from the back of the array
  
- Return the new array
=end

def reverse(array)
  reverse_array = []

  array.reverse_each do |element|
    reverse_array << element
  end
  
  reverse_array
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true