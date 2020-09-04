=begin

PROBLEM
- Input: integer
- Output: integer

rules:
    - Explicit rules: 
      - Write a fibonacci method that computes results without
        recursion
      - First fibonacci number is 1
      - Second fibonacci number is 1
      - Third fibonacci number is sum of previous two numbers

DATA STRUCTURE
- Integers

ALGORITHM
- Keep track of the previous two totals that were computed
- Compute the sum of those numbers and the result will be
  the current total

PSEUDOCODE
- Accept an integer (nth)
- Initialize variable (second to last total = 0)
- Initalize variable (last total = 1)
- current_nth = 2

- Start a loop
  - Current total = previous total + current total
  - second to last total = previous total
  - last total = current total
  - break when current_nth >= nth
  - Increase current nth by 1
=end

def fibonacci(nth)
  return 1 if nth == 1
  
  second_to_last_total = 0
  last_total = 1 
  
  current_total = ''
  
  2.upto(nth) do
    current_total = second_to_last_total + last_total
    second_to_last_total = last_total
    last_total = current_total
  end
  
  current_total
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
