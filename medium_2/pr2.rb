=begin

PROBLEM
- Input: String
- Outpout: Boolean

rules:
    - Explicit rules:
      - Write a method that returns true, if the word passed in as an argument
        can be spelled from this set of blocks
    - Implicit rules:
      - Input string is case insensitive

problem domain:
  - A collection of blocks has two letters per block
  - You cannot use the letters in the same block to spell a word
    - Ex. If you have block B:O, you can only use B or O when spelling
      a word

DATA STRUCTURE
- Arrays(?)
- Hash(?)

ALGORITHM
- Go through every character in input string
  -  For each letter:
    - If the letter is found within our blocks
      - Remove that particular block
    - If the letter is NOT found within blocks
      - Return false

PSEUDOCODE
- Accepting a string (string)
- Initialize an array that contains blocks as nested arrays (available_blocks)

- Iterate through input string
  - Iterate through available blocks
    - Check if current letter is included inside the block that is being
      iterated through
        - If it is included, return nothing
        - If it is not included, return original block

- Flatten the available blocks array
- Iterate through input string again
  - Check if the current letter is included within flattened
    avaliable_blocks array
    - Return 'false' if not included

- Return true
=end

def block_word?(string)
  available_blocks = [ %w[B O], %w[X K], %w[D Q], %w[C P], %w[N A], %w[G T], 
                       %w[R E], %w[F S], %w[J W], %w[H U], %w[V I], %w[L Y], 
                       %w[Z M] ]

  counter_hash = Hash.new(0)
  
  string.chars.each do |current_letter|
    available_blocks.each do |current_block|
      counter_hash[current_block] += 1 if current_block.include?(current_letter.upcase)
    end
  end
  
  counter_hash.values.each do |value|
    return false if value >= 2
  end
  
  true
end

p block_word?('BATCH') == true 
p block_word?('BUTCH') == false
p block_word?('jest') == true