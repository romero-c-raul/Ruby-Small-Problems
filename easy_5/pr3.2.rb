# Further Exploration
require 'time'

CONVERT_TO_MINUTES = 60
HOURS_IN_DAY = 24
MINUTES_PER_DAY = HOURS_IN_DAY * CONVERT_TO_MINUTES

def after_midnight(time_string)
  total_hours = Time.parse(time_string).hour  # used Time method to extract hours
  total_minutes = Time.parse(time_string).min # used Time method to extract minutes

  hours_in_minutes = total_hours * CONVERT_TO_MINUTES

  return 0 if total_hours == 24 # handling edge case
  hours_in_minutes + total_minutes
end

def before_midnight(time_string)
  total_minutes = after_midnight(time_string)

  return 0 if total_minutes == 0 # handling edge case
  MINUTES_PER_DAY - total_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
