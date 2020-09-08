=begin

PROBLEM
- Input: String
- Output:  String and an integer (sentence and how long that sentence is)

DATA STRUCTURE:
- Array
- Strings

ALGORITHM
- Split text by ".", "?", "!"
- Add each sentence that was created after the split to a collection
- Go through collection and split sentence again by spaces

- Count how many elements each sentence has left

- return the sentence and the number of elements
=end

text = File.read('frankenstein.txt')

def longest_sentence(text)
  sentences = text.split(/\.|\?|!/)
  
  lengths = []
  
  sentences.map do |current_sentence|
    lengths << current_sentence.split(" ").size
  end
  
  max_length = lengths.max
  sentences_and_lengths = (lengths.zip(sentences)).to_h
  longest_sentence = sentences_and_lengths[max_length]
  
  puts "This is the longest_sentence and it is #{max_length} characters long:"
  puts ""
  puts "'#{longest_sentence}'"
end

longest_sentence(text)