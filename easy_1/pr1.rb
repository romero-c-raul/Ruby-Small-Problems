def repeat(string = 'Missing arguments!', integer = 1)
  
  if string.is_a?(String) && integer.is_a?(Integer)
    integer.times do
      puts string
    end

  else
    puts 'Wrong type of argument(s), please input a string and integer in that order.'

  end
end

# Test Cases
repeat('Hello World!', 5) # Ideal case
repeat # No arguments given
repeat(5, 'Hello World!')     # Wrong type of argument
repeat('Hello World', '5')    # Wrong type of argument
