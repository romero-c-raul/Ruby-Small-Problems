=begin

PSEUDOCODE
- Accept an integer
- Create an empty array

- Iterate through given integer
- Find corresponding value of integer in hash
- push value into array

-join array and return

=end
# digit_keys = %w[0 9 8 7 6 5 4 3 2 1]
# digit_values = 1234567890.digits
# DIGIT_COLLECTION = Hash[digit_values.zip(digit_keys)]

# Refactoring first attempt + further exploration
DIGIT_COLLECTION = {
  0 => "0", 9 => "9", 8 => "8", 7 => "7", 6 => "6",
  5 => "5", 4 => "4", 3 => "3", 2 => "2", 1 => "1"
}

def integer_to_string(integer)
  new_integer = integer > 0 ? (integer) : (integer * -1)

  integer_array = new_integer.digits.reverse
  string_array = []

  integer_array.each do |int|
    string_array << DIGIT_COLLECTION[int]
  end

  string_array.join
end

def signed_integer_to_string(number)
  if number == 0
    prefix = ""
  elsif number < 0
    prefix = "-"
  else
    prefix = "+"
  end

  prefix + (integer_to_string(number))
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
