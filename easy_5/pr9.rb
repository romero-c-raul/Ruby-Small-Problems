=begin

PROBLEM
- Given a string 
- Return a string with all consecutive duplicate characters collapsed 
  into a single character

EXAMPLES
- Given

DATA STRUCTURE
- arrays
- hash

ALGORITHM
- I will go through string and group similar consecutive characters together in an array
- I will go through every element in array, and delete duplicates

PSEUDOCODE
- Split string by characters
- Create an empty array (non_duplicates)

- We will iterate through each character in split string
  - push letter into empty array IF last element of empty array
    is not equal to the element you are trying to push

- Return non_duplicates
=end

def crunch(string)
  non_duplicates = []
  
  string.chars.each do |letter|
    non_duplicates << letter unless non_duplicates[-1] == letter
  end
  
  non_duplicates.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''