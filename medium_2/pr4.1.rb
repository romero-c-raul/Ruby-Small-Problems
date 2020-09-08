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
  only_parentheses = string.delete('^()')
  return false if only_parentheses.size == 1
  
  only_parentheses.size.times do
    only_parentheses.gsub!('()', "")
  end
  
   only_parentheses == '' ? true : false
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false