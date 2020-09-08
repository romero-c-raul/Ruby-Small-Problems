=begin

PROBLEM
- Input: Integer
- Output: Integer

rules:
    - Explicit rules:
      - Write a method that takes a single integer as an argument
        and RETURNS the next featured number that is greater than 
        the argument

DATA STRUCTURE
- Integers
- Arrays

ALGORITHM
- Take input integer and increase value until:
  - Current integer is odd AND a multiple of 7
    - If true, separate its number by digits
      and check if all digits are different
      - If all digits are different, return current integer
  
  - Return an error if num > 9_999_999_999
PSEUDOCODE
- Accept an integer (integer)
- Initialize variable (counter) equal to 0

- Start a loop
  - Increase integer value by 1
  - If integer is odd and integer is divisible by 7
    - individual_digits = integer.digits
    - unique_digits = individual_digits.uniq
    - return integer if individual_digits == unique_digits
  - break if integer > 9_999_999_999
=end

def featured(integer)
  current_integer = integer
  
  loop do
    current_integer += 1
    
    if current_integer.odd? && current_integer % 7 == 0
      all_digits = current_integer.digits
      unique_digits = all_digits.uniq
      return current_integer if all_digits == unique_digits
    end
    
    break if current_integer > 9_876_543_210
  end
  
  "There is no possible number that fulfills those requirements"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)