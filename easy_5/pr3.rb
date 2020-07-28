=begin

PROBLEM
- Write two methods that take time in 24 hr format (string)
  - One method for number of minutes after midnight
  - One method for number of minutes before midnight

- Return number of minutes (integer)

Rules:
      - Both methods should return a value in the range 0..1439
      - May not use Date or Time methods

Calculating minutes:

  After midnight example - 12:34
    - We take hours and multiply by 60 ( 12 * 60 = 720)
    - add that to the number of minutes (34 + 720 = 754)
    - that gives us total minutes (754)
    - after midnight minutes =  0 + 754 = 754

  Before midnight example - 12:34
    - We take hours and multiply by 60 ( 12 * 60 = 720)
    - add that to the number of minutes (34 + 720 = 754)
    - that gives us total minutes (754)
    - before midnight minutes =  1440 - 754 = 686

EXAMPLES
- Given

DATA STRUCTURES
- integers

ALGORITHM
- Convert hours value to minutes
- Add hours value in minutes to minutes value
- Add total hours and minutes value to 0 for after midnight minutes
- Subtract total hours and minutes value for before midnight minutes

PSEUDOCODE
- Accept a string in hh:mm
- Separate hours and minutes values, convert to integer,
  and assign them to separate variables (hours, minutes)
- Create constant 60 (CONVERT_TO_MINUTES)

- Multiply hours by 60 to convert to minutes
  and assign to variable (hours_in_minutes)
- Add up the hours in minutes to the minutes value (total_minutes)

- return after midnight value: 0 plus total minutes
- return before midnight value: 1440 - total minutes
=end

# First attempt
CONVERT_TO_MINUTES = 60
MINUTES_PER_DAY = 1440

def after_midnight(time_string)
  total_hours = time_string[0..1].to_i
  total_minutes = time_string[-2..-1].to_i

  hours_in_minutes = total_hours * CONVERT_TO_MINUTES

  return 0 if total_hours == 24
  hours_in_minutes + total_minutes
end

def before_midnight(time_string)
  total_hours = time_string[0..1].to_i
  total_minutes = time_string[-2..-1].to_i

  hours_in_minutes = total_hours * CONVERT_TO_MINUTES
  total_minutes += hours_in_minutes

  return 0 if total_hours == 0 && total_minutes == 0
  MINUTES_PER_DAY - total_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
