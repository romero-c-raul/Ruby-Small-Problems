=begin

input: string
output: boolean (Is the string a palindome?)

Rules:
- case insensitive
- ignore non-alphanumeric characters

Algorithm:
- Get string from user
- Store characters from string in new place and
  remove non-alphanumberic characters
- Reverse order of alphanumeric characters left and create new string
- check if this string is the same as the original string

Pseudocode
- Define method with one parameter ( real_palindrome?(string) )
- Delete spaces, downcase, and separate string by characters
  - assign to new variable (string_array)

- Create new empty array (alphanum_values)
- Create an array of numeric values 0-9 (number_values)
- Create an array of letters a-z (alphabet)

- Iterate through string_array
  - push values to alphanum_values that are
    included in number_values or alphabet

- Join alphanum_array (alphanum_string)
- Reverse alphanum_string and check if it is equal to alphanum_string
=end

def real_palindrome?(string)
  string_array = string.delete(" ").downcase.chars

  alphanum_values = []
  number_values = ('0'..'9').to_a
  alphabet = ('a'..'z').to_a

  string_array.each do |element|
    if number_values.include?(element) || alphabet.include?(element)
      alphanum_values << element
    end
  end

  alphanum_string = alphanum_values.join
  alphanum_string == alphanum_string.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
