def fibonacci(integer)
  if integer <= 2
    1
  else
    fibonacci(integer - 1) + fibonacci(integer - 2)
  end
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765