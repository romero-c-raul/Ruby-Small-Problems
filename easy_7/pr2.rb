=begin

PROBLEM
  - Input: string
  - Output: hash 
  
rules:
    - Explicit Requirements
      - Write a method that takes a string, and returns a hash
        - Hash contianes 3 entries: 
          - number of lowercase letters
          - number of uppercase letters
          - number of characters that are neither
    
    - Implicit Requirements
      - Numbers are considered neither
 
EXAMPLES
- Given

DATA STRUCTURE
- Hash
- Array

ALGORITHM
- Create a hash that contains the 3 entries determined above

- Iterate through each character in string
  - Increase lowercase count if lowercase letter is encountered
  - Increase uppercase count if uppercase letter is encountered
  - Increase neither count if any other type of character is encountered
- Return Hash
=end

LOWERCASE_LETTERS = Range.new('a','z')
UPPERCASE_LETTERS = Range.new('A','Z')

def letter_case_count(string)
  lettercase_counter = { lowercase: 0, uppercase: 0, neither: 0 }
  
  string.each_char do |element|
    if LOWERCASE_LETTERS.include?(element)
      lettercase_counter[:lowercase] += 1 
    elsif UPPERCASE_LETTERS.include?(element)
      lettercase_counter[:uppercase] += 1 
    else
      lettercase_counter[:neither] += 1
    end
  end
  
  lettercase_counter
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }