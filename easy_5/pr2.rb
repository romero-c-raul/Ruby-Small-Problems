=begin

PROBLEM
- Given an integer (minutes before or after midnight)
- Determine the time of day in hh:mm


EXAMPLES
- Given

DATA STRUCTURE
- Integers (input)
- Arrays 
- String (output)

ALGORITHM
- Convert total minutes to corresponding hours and minutes
- if time is negative you will subtract corresponding hours from 24 and 60
- if time is positive you will add corresponding hours to 0 and 0
- Output determined hours and minutes

PSEUDOCODE
- Accept an integer
- Create new variable with abs value of integer
- total_hours = 0
- total_minutes = 0

- If integer is >= 60 
  - Convert integer to hours (divide by 60.0) (total_hours)
  - Convert modulo on hours/60 to minutes (total_minutes)
  
  - Create loop
    - Remove 24 from total hours until total hours <= 24

- Else
  - Total hours = 0
  - total_minutes = integer
  
- Create an empty array

- if integer < 0
  - push to empty array (24 - total_hours)
  -push to empty array ( 60 - total_minutes)
- else
  - push to empty array (0 + total_hours)
  - push to empty array (0 + total_minutes)
end

- if the size of total minutes or totalhours > 1
  - then convert total hours to string
- if the size of total minutes or total hours is = 1
  - Convert total hours to string and prepend a 0 in front

-Concatenate total hours a plus sign and total minutes


=end
#First attempt
def time_of_day(integer)
  abs_integer = integer.abs
  total_hours = 0
  total_minutes = 0
  
  if abs_integer >= 60
    total_hours = abs_integer / 60.0
    total_minutes = (total_hours.modulo(1) * 60).round
    
    if total_hours > 24
      loop do
        total_hours -= 24
        break if total_hours <= 24
      end
    end
  
  else
    total_hours = 0
    total_minutes = abs_integer
  end
  
  total_hours
  
  hours_minutes = []
  
  if integer < 0
    if total_hours == 0
      hours_minutes.push(23)
      hours_minutes.push(60 - total_minutes)
    else
    hours_minutes.push(24 - total_hours.round)
    hours_minutes.push(60 - total_minutes)
    end
  else
    if total_hours == 0
      hours_minutes.push(total_hours.round)
      hours_minutes.push(total_minutes)
    else
      hours_minutes.push(total_hours.round)
      hours_minutes.push(total_minutes)
    end
  end
  
 
  hours_minutes = hours_minutes.join(",").split(",")
  hours_minutes[0].prepend("0") if hours_minutes[0].size == 1
  hours_minutes[1].prepend("0") if hours_minutes[1].size == 1
  hours_minutes.join(":")

end
  
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

  

