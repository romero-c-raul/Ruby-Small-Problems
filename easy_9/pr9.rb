=begin

PROBLEM
  - Input: 3 arguments (integer, integer, integer)
  - Output: String
  
rules:
    - Explicit Rules:
      - Write a method that determines the mean average of 3 scores passed to it
        and RETURNS the letter value associated with that grade
      - All values are between 0 and 100
      - There is no need to check for negative values or values greater than 100

DATA STRUCTURE
- Hash(?)

ALGORITHM
- Create a collection that stores the Letter grade 
  and its associated numerical score
- Determine the average of the three input values
- Determine the letter grade from the given average by checking the collection

PSEUDOCODE
- Accept 3 integers
- Initialize a hash that contains the Letter Grade as key and range as numerical score
- Initialize variable average equal to the average of the 3 input integers

- Iterate through hash
  - Select letter grade in hash that corresponds to average
  - Return letter grade
=end

def get_grade(num1, num2, num3)
  letter_scores = { "A" => (90..100), "B" => (80...90),
                    "C" => (70...80), "D" => (60...70), "F" => (0...60)
  }
  
  grade_average = (num1 + num2 + num3) / 3
  grade_average = 100 if grade_average > 100 # Accounts for extra credit
  
  letter_grade = letter_scores.select do |_, grade_range|
    grade_range.include?(grade_average)
  end
  
  letter_grade.keys[0]
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"