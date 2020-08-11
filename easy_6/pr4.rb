=begin
PROBLEM
- Input: array (elements? string, integer, whatever)
- Output: array (elements reversed)

- rules:
      - Explicit Rules
        - Reverse elements in place BUT we have to return
          the same array object
      
      - Implicit
        - Empty array as argument should return empty array
        

DATA STRUCTURE
- Arrays

ALGORITHM
- Accept an array as an argument
- Create an empty array

- Iterate through our input array
  - Push elements into new array in reverse order
  - Delete current element

- Iterate through new array
  - Push element into original array

- Return original input array

PSEUDOCODE
- Accept array as an argument (array)
- Initialize an empty array (reverse_copy_array)

- Iterate through array
  - For each element going from last to first:
    - Use #pop to delete current element and push into reverse_copy_array

- Iterate through reverse_copy_array and push elements into original array

- Return Original Array
=end

def reverse!(array)
  reverse_copy_array = []
  
  until array.empty? do 
    reverse_copy_array << array.pop
  end
    
   reverse_copy_array.each do |element|
     array << element
   end
  
  array
end

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b e d c)
p list.object_id
reverse!(list) == ["c", "d", "e", "b", "a"]
p list #== ["c", "d", "e", "b", "a"]
p list.object_id

list = ['abc']
reverse!(list) == ["abc"]
p list == ["abc"]

list = []
reverse!(list) == []
p list == []