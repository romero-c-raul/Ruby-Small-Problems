=begin

input: current age AND age of retirement
output: year of retirement AND how many years until then

years until retirement = age of retirement - current age
year of retirement = current year + years until retirement

Data Structure:
- integers

Algorithm:
- ask user for current age and desired age of retirement 
- calculate how many years until retirement age
- calculate the year of retirement 
- Output the current year, the year of retirement
- Output how many years left until retirement age

Pseudocode:
- ask user for current age
- get current age from user (current_age)
- ask user for desired age of retirement
- get desired age of retirement from user (desired_retirement_age)

- calc. years until retirement = age of retirement minus current age
- calc. year of retirement = current year plus years until retirement

- print current year and the year of retirement
- print years left until retirement age

=end
CURRENT_YEAR = Time.now.year

puts "What is your age?"
current_age = gets.to_i

puts "At what age would you like to retire?"
desired_retirement_age = gets.to_i

years_until_retirement = desired_retirement_age - current_age
year_of_retirement = CURRENT_YEAR + years_until_retirement

puts ""
puts "It's #{CURRENT_YEAR}. You will retire in #{year_of_retirement}."
puts "You have only #{years_until_retirement} years of work to go!"