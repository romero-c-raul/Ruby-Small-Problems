# Further exploration

HEX_COLLECTION = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  "A" => 10, "B" => 11, "C" => 12, "D" => 13,
  "E" => 14, "F" => 15
}

def hexadecimal_to_integer(string)
  string_array = string.split("").reverse
  exponent_value = 0
  final_integer = 0

  string_array.each do |number|
    digit_value = HEX_COLLECTION[number.upcase]
    final_integer += digit_value * (16**exponent_value)
    exponent_value += 1
  end

  final_integer
end

p hexadecimal_to_integer('4D9f') == 19871
