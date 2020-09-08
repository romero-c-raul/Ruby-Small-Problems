=begin

PROBLEM
- Input: integer, integer, integer
- Output: symbol

--- Write a method that takes the 3 angles of a triangle as arguments
    and returns a symbol

rules:
    - Explicit rules
      - Valid triangle:
        - Sum of angles must be exactly 180 degrees
        - All angles must be greater than 0

DATA STRUCTURE
- Integers
- Arrays

ALGORITHM
- Validate angles given:
  - Neither of them can be 0
  - Sum of all 3 angles must be exactly 180 degrees

- Go through collection that includes all angles
  - if one angle is > 90: obtuse
  - if one angle is == 90: right
  - if all 3 angles are < 90: acute
=end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  
  case
  when angles.include?(0), angles.sum != 180
    :invalid
  when angles.one? { |angle| angle > 90 }
    :obtuse
  when angles.include?(90)
    :right
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid