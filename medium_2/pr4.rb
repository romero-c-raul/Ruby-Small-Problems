=begin
PROBLEM:
- Input: string
- Output: boolean

rules:
    - Explicit rules:
      - Write a method that takes a string argument and
        RETURNS true if all parentheses in the string are "balanced"
      - Balanced pairs must start with a '('

DATA STRUCTURE:
- String
- Arrays
- Hashes(?)

ALGORITHM
- Go through input string
- 
=end

def balanced?(string)
  p only_parentheses = string.delete('^()')
  return false if only_parentheses.size == 1
  
  only_parentheses_array = only_parentheses.chars
  left_hand_index = 0
  right_hand_index = -1
  array = []
  
  (only_parentheses.size / 2).times do 
    array << only_parentheses_array[left_hand_index]
    array << only_parentheses_array[right_hand_index]
    
    left_hand_index += 1
    right_hand_index -= 1
  end
    
  final_array = array.join
  
  (only_parentheses.size).times do 
    final_array = final_array.gsub('()', "")
  end
  
  final_array
  
  final_array == '' ? true : false
  
end

p balanced?('What (is) this?') #== true
p balanced?('What is) this?') #== false
p balanced?('What (is this?') #== false
p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') #== false
p balanced?('Hey!') #== true
p balanced?(')Hey!(') #== false
p balanced?('What ((is))) up(') #== false