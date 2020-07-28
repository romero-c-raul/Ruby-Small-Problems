=begin

PROBLEM
- Given a string that consists of words and other special characters
- Return string with non alphabetic characters replaced by spaces

Rules:
      - If one or more non-alphabetic chars occur in a row
        only have one space in the result
      - There shoud only be one empty space between words

EXAMPLES
- Given

DATA STRUCTURE
- Arrays

ALGORITHM
- Go through each character in string
- Replace non-alphabetic characters with a space
  - more than one
  non-alphabetic chars in a row should be replaced with
    one space

PSEUDOCODE
- Accept a string (string)
- Separate string into array by spaced and assign
  to variable (words_array)

- Iterate through words array (map?)
  - For each element in array, replace everything not a letter with single space
- Assign new array to a variable

- Iterate through new array
  - For each element in array, replace multiple spaces with single space
=end

def cleanup(string)
  almost_clean_array = string.split(" ").map do |element|
    element.tr('^a-z', ' ')
  end

  almost_clean_string = almost_clean_array.join(" ")
  almost_clean_string.gsub(/\s+/, ' ') # replaces several spaces w/single space
end

p cleanup("---what's my +*& line?") == ' what s my line '
