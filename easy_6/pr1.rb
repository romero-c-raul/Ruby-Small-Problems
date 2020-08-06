# frozen_string_literal: true

# #First Attempt + Further Exploration
#
# PROBLEM
# - Input: integer
# - Output: string (degrees, minutes, seconds)
#
# Rules:
#     - Explicit Requirements:
#       - Take in floating point number (number that contains decimal points) that represents
#         an angle between 0 and 360 degrees
#       - Return a string that represents angle in degrees, minutes, seconds
#         - Use degree symbol for degrees, single quotes for mins, double quotes for secs
#       - Should two digit numbers with leading zeroes when formating minutes and seconds
#
#     - Implicit Requirements:
#       - We also need to consider integers (convert to float?)
#
# Problem Domain:
#   - A degree has 60 minutes
#   - A minute has 60 seconds
#
#   - Convert angle to degrees, minutes, seconds (use divmod)
#     - Example of 93.034773 degrees
#       - First, separate whole number from decimal (first value is degrees)
#       - Then, calulate minues by multiplying decimal by 60
#         - Separate integer from decimal value if needed, if not round up (first value mins, second secs)
#
# EXAMPLES
# - Given
#
# DATA STRUCTURE
# - Arrays
#
# ALGORITHM
# - Accept an integer or float value
#
# - Determine degrees, minutes, and seconds
#   - Degrees are the whole part of our floating number
#   - Fractional part can be used to determine minutes and seconds
#     - Determine minutes by multiplying fractional part by 60 (give us a new floating point number)
#       - Whole part of new floating number is minutes
#       - Decimal part times 60 is seconds (round this value)
#   - Degrees, minutes, and seconds will be assigned to their variables
#
# - Join all this values together in the appropriate format:
#   (°) for degrees, (') for minutes, ('') for seconds
#
# PSEUDOCODE
# - Accept an integer or float value (angle)
# - Convert angle value to float (still angle)
#
# - use divmod on angle to separate whole part from fractional part
#   - Assign whole part of this number to variable degrees
#   - Multiply fractional value by 60, divmod it
#     - Assign whole number to variable minutes
#     - Multiple fractional number by 60, round(?), and assign to variable seconds
#
# - At this point, degrees, minutes, and seconds will have been calculated.
#
# - Format by values using sprint f for minutes and seconds
#
# - Push degree symbol to degrees, single quote to minutes, double quote to seconds
# - Join all this values together and return them

DEGREE = "\xC2\xB0"
MINUTE = "'"
SECOND = '"'
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
MAX_DEGREE_RANGE = 360

# Adds leading 0 to integer
def format_time(time)
  format('%02d', time)
end

# Takes care of case where range is outside 0 - 360
def determine_angle(angle, range)
  range.include?(angle) ? angle.to_f : angle.divmod(MAX_DEGREE_RANGE).last
end

# Main method
def dms(angle)
  degrees_range = 0..360
  angle = determine_angle(angle, degrees_range)

  degrees = angle.divmod(1).first
  minutes, seconds = (angle.divmod(1).last * MINUTES_PER_DEGREE).divmod(1)
  seconds = (seconds * SECONDS_PER_MINUTE).to_i

  formatted_minutes = format_time(minutes)
  formatted_seconds = format_time(seconds)

  (degrees.to_s << DEGREE) + (formatted_minutes << MINUTE) + (formatted_seconds << SECOND)
end

# #divmod(1) was used to separate the integral part and fractional part of our numbers

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")
