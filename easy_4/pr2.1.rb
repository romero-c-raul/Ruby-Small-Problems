# Following launchschool solution

=begin
1 -> st
2 -> nd
3 -> rd
0, 4..9 -> th
11, 12, 13 -> th
=end

def century(year)
  if year % 100 == 0
    century = year / 100
  else
    century = (year / 100) + 1
  end

  century.to_s + century_suffix(century)
end

def century_suffix(century)
  last_digits = (century % 100)
  return "th" if [11, 12, 13].include?(last_digits)

  case last_digits.to_s[-1]
  when "1"
    "st"
  when "2"
    "nd"
  when "3"
    "rd"
  else
    "th"
  end
end

p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'
