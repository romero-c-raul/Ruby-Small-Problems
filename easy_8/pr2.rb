=begin

PROBLEM
  - Input: None
  - Output: String
  
rules:
    - Explicit Requirements:
      - Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective
        and injects those into a story that you create

ALGORITHM
- Obtain noun, verb, adjective, and adverb from user
- Print a story using those words
=end

def madlibs()
  puts "Enter a noun:"
  noun = gets.chomp
  puts "Enter a verb:"
  verb = gets.chomp
  puts "Enter an adjective:"
  adjective = gets.chomp
  puts "Enter an adverb:"
  adverb = gets.chomp
  
  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious"
end

madlibs