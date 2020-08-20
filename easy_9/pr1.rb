=begin
  - Input: 2 arguments (array, hash)
  - Output: String

rules:
    - Explicit Rules:
      - Create a method that takes two arguments (array, hash)
        - Array has 2 or more elements
        - Hash contains two keys: :title and :occupation, and appropriate values
        - RETURN a greeting that uses the persons full name 
          and mentions title/occupation

DATA STRUCTURE
- String

ALGORITHM
- Combine elements in array with adjoining spaces
- Extract value of :title from hash,
- Extract value of :occupation from hash

- Concatenate the name, title and occupation into a greeting
- Return greeting
=end

def greetings(array, hash)
  name = array.join(" ")
  title = hash[:title]
  occupation = hash[:occupation]

  puts "=> Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
