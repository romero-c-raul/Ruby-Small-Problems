=begin

PROBLEM
- Input: integer (number of digits)
- Output: integer (index number of the first fib. number with an #input amount of digits)

rules:
    - Explicit Requirements
      - Calculate fibonacci sequence
      - Return index number of the first fibonacci number that has the number of digits 
        specified as an argument
      - The first fibonacci number has index 1
      - Assume argument value is always greater than or equal to two

Problem Domain:
  - How do we calculate fibonacci number?
    - Counter that starts at zero, current number
    - We start at one 
      - we add zero and result is 1
      - counter is replaced with 1
    - We add previous number plus one

DATA STRUCTURE
- Arrays

ALGORITHM
- Create length variable
- Calculate fibonacci number
  - Start with two variables: counter and current number
  - Counter will be zero and current number will be one
  
  - Start a loop
    - current number = Add up counter and current number
    - Push sum number into array
    - counter will equal current number
    - Also have variable keeping track of array length
  - Break when we obtain desired index length,  
  
PSEUDOCODE
- Accept an integer

- Create a new array
- Create a variable length
- Create a variable counter
- Create a variable current number

- Start a loop
  - Current number = counter and current number
  - Push the sum above into array
  - Counter will equal current number
  - Length will be added value of one
  - Break when length of current value (convert to string) is equal to the input length (maybe + 1?)
- End
=end

def find_fibonacci_index_by_length(digits)
  fibonacci_sequence = []
  fibonacci_sequence << 0
  
  previous_number = fibonacci_sequence.first
  current_number = 1
  
  loop do
    current_number += previous_number
    previous_number = fibonacci_sequence.last
    fibonacci_sequence << current_number
    break if current_number.to_s.size >= digits
  end
  
  fibonacci_sequence.size - 1
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847