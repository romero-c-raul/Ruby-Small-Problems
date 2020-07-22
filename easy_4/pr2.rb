=begin

PROBLEM
- We will accept an integer
- Output will be a string showing the century number 

- New centuries begin in years that end with 01
  - Year 1 = first century
  - Year 101 - 200 = second century
  - Year 201 - 300 = third century

rules for century:
  
    - 0 -> 0
    - 00 -> th
    - 1 -> st
    - 2 -> nd
    - 3 -> rd
    - 4 -> th
    
  BUT, there is an exception when we end in the teens:
    - 11 - th
    - 12 -> th
    - 13 -> th
    - 15 -> th
    - 16 -> th
    - 17 -> th
    - 18 -> th
    - 19 -> th
    
- if year % 100 = 0
  - Century = year / 100
- else
  - century = (year/100) + 1
  
EXAMPLES
- provided

DATA STRUCTURE
- strings
- array/dictionary (?)

ALGORITHM
- Use provided year to determine century
- After we determine century, we will add proper suffix to said century
- return string with century and proper suffix attached (1st, 2nd, 100th, etc.)

PSEUDOCODE
- define method ( (century(year) )
- Accept integer into our method (year)

- Create a dictionary with century rules (century_suffix)

- Calculate century:
  - year % 100 == 0
    - century = year / 100
  - year % 100 != 0
    - century = (year / 100) + 1

- Look at last two digits of integer
  - if century.count = 1
    - turn century into string
    - append suffix century << hash[century]
  - if century.count > 1
    - create new variable with last two digits
      - convert century into string
      - two_digit_century = century[-2] + century [-1]
      - check if two digit century is included in hash keys
        - if it is then append suffix to century << hash[century]
        -else
          - look if century[-1] is included in hash (it should be)
            - append suffic to century << hash[century] 
  
  return century
=end

def century(year)
  
  century_suffix = { "0" => "th", "00" => "th",
                     "1" => "st", "2" => "nd", "3" => "rd",
                     "4" => "th", "5" => "th", "6" => "th",
                     "7" => "th", "8" => "th", "9" => "th",
                     "11" => "th", "12" => "th", "13" => "th"
                    }
  
  century = ""
  
  if year % 100 == 0
    century = year / 100
  else
    century = (year / 100) + 1
  end
  
  century = century.to_s
  
  if century.size < 2
    century << century_suffix[century]
  else

    two_digit_century = century[-2] + century[-1]

    if century_suffix.include?(two_digit_century)
      century << century_suffix[two_digit_century]
    else
      century << century_suffix[century[-1]]
    end
  end
  
  century
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'