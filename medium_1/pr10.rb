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

def fibonacci_last(number)
  fibonacci(number) 
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
