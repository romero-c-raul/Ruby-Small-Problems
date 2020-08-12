# Further Exploration
=begin

PROBLEM
  - Input: string 
  - Output: string
  
rules:
    - Explicit Requirements
      - Write a method that returns the middle word of a phrase/sentence
      - Words are any sequence of non-blank characters

Problem Domain:
  - What is the middle word? 
    - Odd numbered sentence: array.size / 2 - 1
    - Even numbered sentence: 
      - array.size / 2
      - array_middle = array.size / 2
      - array[(array_middle - 1)..array_middle]
  
  Edge Cases: 
    - Empty String
    - Multiple spaces
    - Even numbered sentence
    - Single word

ALGORITHM
- If the number of words is odd, then we will obtain the word that has equal
  amount of words to the left and right
- If the number of words is even, we will obtain the two middle words

PSEUDOCODE
- Split array by spaces
- Obtain size of array

- If array size is == 1:
  - Return only element in array
- If array size is == 2
  - Return the two only words
- If array size is odd:
  - index value for middle word is array.size / 2 
- If array size is even:
  - index range for middle words is:
    - array.size / 2
    - array_middle = array.size / 2
    - array[(array_middle - 1)..array_middle]
=end

def penultimate(string)
  
  string_array = string.split(" ")
  number_of_words = string_array.size
  
  return string if string.empty?
  
  if number_of_words == 1
    return string
  elsif number_of_words == 2
    return string
  elsif number_of_words.odd?
    middle_word = (string_array.size / 2) 
    string_array[middle_word]
  elsif number_of_words.even?
    middle_word = string_array.size / 2
    string_array[(middle_word - 1)..middle_word].join(" ")
  else
    string
  end
end

p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'is'
p penultimate('I am very hungry now')
p penultimate('1 2 3 4 5')
p penultimate('1 2 3 4 5 6')
p penultimate('')
p penultimate("hello")
p penultimate("     hello    how     are    you    today     ")
