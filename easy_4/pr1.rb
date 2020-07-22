=begin

PROBLEM
- Method takes two arugments (strings)
- Method returns first argument, second argument, and third argument contatenated
- Assume strings will always be different lengths

EXAMPLE
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

DATA STRUCTURE
- string

ALGORITHM
- Define method that takes two string arguments
- Determine which of those string arguments is the longest
- The longest string will be concatenated with the shorter string before and after it
- Output will be final concatenated string

PSEUDOCODE
- Accept two string arguments in method

- Determine longest string
  - if the length of first argument > second argument
    - then longest argument = first argument
    - and shorter argument = second argument
  else
    - longest argument = second argument
    - shorter argument = first argument

- String concatenate shorter argument + longest argument + shorter argument
=end

def short_long_short(first, second)
  
  if first.size > second.size
    longer_string = first
    shorter_string = second
  else
    longer_string = second
    shorter_string = first
  end
  
  shorter_string + longer_string + shorter_string
  
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"