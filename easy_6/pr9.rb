=begin

PROBLEM
  Input: 2 parameters (array, integer)
  Output: boolean (true or false)
  
rules:
    - Explicit Rules:
      - Return true if the value being searched is in array,
        false if it is not in array
      - May not use #array.include?

DATA STRUCTURE
- Array

ALGORITHM

- Create a true or false variable that will store true or false value

- Iterate through array
  - If element in array is equal to the second argument value, 
    set created variable = true
- Return true or false variable

=end

def include?(array, value)
  true_or_false = false
  
  array.each do |element|
    if element == value
      true_or_false = true
      break
    end
  end
  
  true_or_false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false