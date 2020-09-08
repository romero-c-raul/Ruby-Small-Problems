=begin

PROBLEM
- Input: String
- Output: Hash

rules:
    - Explicit rules:
      - Write a method that takes a string, and returns a hash:
        - Hash contains 3 entries:
          - Percentage of lowercase characters
          - Percentage of uppercase characters
          - Percentage of characters that are neither
      - Assume string will always contain at least one character
    
    - Implicit rules:
      - Numbers, special characters, and spaces count as neither

problem domain:
  - Need to obtain num of characters that are uppercase and div by total chars
  - Need to obtain the num of characters that are downcase and div by total chars
  - Need to obtain the num of characters that are neither and div by total chars
  - Neither characters are: total chars - upcase - downcase

DATA STRUCTURE:
- Hashes
- Array(?)
- String

ALGORITHM
- Count number of total characters in input string
- Count number of uppercase characters in input string
  - Divide count by total chars in string
  - Add to collection
- Count number of downcase characters in input string
  - Divide count by total chars in string
  - Add to collection
- Count number of neither characters in input string
  - Divide count by total chars
  - add to collection
=end

def letter_percentages(string)
  total_characters = string.size
  
  downcase_count = string.count("a-z")
  upcase_count = string.count("A-Z")
  neither_count = total_characters - downcase_count - upcase_count
  
  final_percentage = { lowercase: downcase_count / total_characters.to_f,
                       uppercase: upcase_count / total_characters.to_f,
                       neither: neither_count / total_characters.to_f }
                       
  final_percentage.transform_values { |values| (values * 100).round(2) }
end

p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI')