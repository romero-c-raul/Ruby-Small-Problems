=begin

PROBLEM
- Input: integer, integer, integer (or floats? numbers)
- Output: symbol

rules:
    - Explicit rules:
      - Write a method that takes the lengths of the 3 sides
        of a triangle as arguments and returns a symbol

problem domain:
  - Valid triangle has the sum of the lengths of the two shortest sides
    be greater than the length of the longest side
  
  - Equilateral: 3 sides equal
  - Isosceles: 2 sides equal, 3rd is different
  - scalene: all 3 sides are of different length
  
DATA STRUCTURE:
- Integers
- Arrays

ALGORITHM
- Sort the lengths in ascending order
- Check if the triangle is valid

- Go through each length
  - Count how many times each number appears in the array
    and add to collection
  - Check how many elements are in collection:
    - 1 element means triangle is equilateral
    - 2 elements mean triangle is isosceles
    - 3 elements mean triangle is scalene
=end

def triangle(length1, length2, length3)
  triangle_lengths = [length1, length2, length3].sort
  
  return :invalid if triangle_lengths.include?(0)
  unless triangle_lengths[0, 2].sum > triangle_lengths.last
    return :invalid
  end
  
  number_counter = Hash.new(0)
  
  triangle_lengths.each do |number|
    number_counter[number] += 1
  end
  
  case number_counter.keys.size
  when 1 then :equilateral
  when 2 then :isosceles
  when 3 then :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid