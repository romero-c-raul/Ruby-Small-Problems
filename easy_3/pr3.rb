=begin
Input: String of words
Outputs: number of characters in string not including space

Data Structure:
-String and Array

Algorithm:
- Separate string into individual words
  - Count every word while avoiding spaces
  
Pseudocode:
- Ask user to input a word or multiple words
- Split string into characters (creating an array) and assign to variable
- Delete empty space characters " " from array
- Count length of string and output result
=end

puts "Please write word or multiple words: "

string_input = gets.chomp
string_array = string_input.chars
string_array.delete(" ")


puts "There are #{string_array.length} characters in \"#{string_input}\"."