=begin

PROBLEM
- Accepting a year value as an integer
- Determine if said year is a leap year (return boolean)
- We will only take any year greater than 0

- Leap year:
  - Year is divisible by 4 BUT not divisible by 100
  - Year is divisible by 100 AND divisible by 400

EXAMPLES
- Provided

DATA STRUCTURE
- integers

ALGORITHM

- Determine if year is leap year
  - it is a leap year if:
    -year is divisible by 4 but not 100
    or
    - year is divisible by 100 and 400
- Return true or false value (is it a leap year?)

PSEUDOCODE

-Accept an integer

- if integer % 4 == 0
  - return true unless integer % 100 == 0
- elsif integer % 100 == 0
  - return true if integer % 400 == 0
- else
  - false
-end
=end

def leap_year?(year)
  
  if year % 4 == 0
    return true unless year % 100 == 0
    return true if year % 400 == 0
  end

  false
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
