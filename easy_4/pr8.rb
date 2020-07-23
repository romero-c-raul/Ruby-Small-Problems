DIGIT_COLLECTION = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(string)
  string_array = string.split("").reverse
  string_array.pop if string_array.include?("-") || string_array.include?("+")
  
  exponent_value = 0
  final_integer = 0

  string_array.each do |number|
    digit_value = DIGIT_COLLECTION[number]
    final_integer += digit_value * (10**exponent_value)
    exponent_value += 1
  end

  return (final_integer * -1) if string.include?("-")
  final_integer
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100