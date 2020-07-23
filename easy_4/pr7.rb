=begin

PROBLEM
- Convert string into integer equivalent
- We will accept a string of digits
- Assume all characters are numeric
- Do not use any of the ruby standard methods

EXAMPLES
- Given

DATA STRUCTURE
- Integer (output)
- String (input)
- Hash

ALGORITHM

PSEUDOCODE
- Accept string of numbers
- Create a hash with strings as keys and values as integers (integer_values)

- Split our string of numbers into an array and reverse it
- Create an exponent variable = 0 (exponent_value)
- Create variable = 0 where final integer will be stored (final_integer)

- Iterate through string array
  - Find current element of string in hash and assign to variable (number)
  - add to final_integer variable number * (10^exponent_variable)
  - exponent variable increase by 1

=end

# digit_keys = %w[0 9 8 7 6 5 4 3 2 1]
# digit_values = 1234567890.digits
# DIGIT_COLLECTION = Hash[digit_keys.zip(digit_values)]
DIGIT_COLLECTION = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  string_array = string.split("").reverse
  exponent_value = 0
  final_integer = 0

  string_array.each do |number|
    digit_value = DIGIT_COLLECTION[number]
    final_integer += digit_value * (10**exponent_value)
    exponent_value += 1
  end

  final_integer
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
