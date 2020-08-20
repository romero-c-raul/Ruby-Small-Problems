=begin

PROBLEM
- Input: Integer
- Output: Integer

rules:
    - Explicit Rules:
      - Write a method that returns 2 times the number provided as argument
        UNLESS the argument is a double number
          - A double number is a number with an EVEN number of digits
            whose left side digits == right side digits
      - RETURN double numbers as is
      
    - Implicit Rules:
      - One digit integers are not considered double numbers

DATA STRUCTURES
  - Array

ALGORITHM
- Determine if the input number has an even number of digits

- If that is true:
  - Divide the number into two halves:
    - Determine the index value of our middle digit:
      - middle digit = number of digits divided by two
    - Using the middle digit, we will separate the first half and the second half 
      of our input number:
        - first half (index value 0 to index value of middle digit - 1)
        - second half (index value of middle digit to last index value of array)
    
    - Compare if first and second halves are equal
      - If true, then the number is a double number
        - RETURN input number as it 
      - If false, return input number * 2
      
- If number does NOT have an even number of digits
  - RETURN 2 times the input number
=end

def twice(integer)
  string_integer = integer.to_s
  return integer * 2 if string_integer.size <= 1
  
  if string_integer.size.even?
    middle_digit = string_integer.size / 2
    first_half = string_integer[0..middle_digit - 1]
    second_half = string_integer[middle_digit..-1]
    first_half == second_half ? integer : integer * 2
  else
    integer * 2
  end
  
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10