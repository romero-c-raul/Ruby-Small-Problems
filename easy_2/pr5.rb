=begin

input: name (string)
output: string

data structure:
String

Test cases/ input:
- 'Raul'
-'Raul!' --> Should yell back
- 'Ra!ul' --> Should not yell back

Algorithm:
- Ask user for their name
- if the user includes a exclamation mark at the end of their name
  - computer yells back at user
- if user does not include an exclamation mark at the end
  - polite greeting to user
  
Pseudocode:
- Ask user for they name
- get answer from user (name)

- if last character of string is == "!"
  - Print computer yelling back at user
-else
  - Print polite greeting
=end

puts "What is your name?"
name = gets.chomp

polite_greeting = "Hello #{name}."
yell_greeting = "HELLO #{name.delete("!").upcase}. WHY ARE WE SCREAMING?"

puts name[-1] == '!' ? yell_greeting : polite_greeting