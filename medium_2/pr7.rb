require 'date'

def days_in_month(year, month) # Used to obtain total days in month
  Date.new(year, month, -1).day
end

def friday_13th(year)
  counter = 0
  
  1.upto(12).each do |current_month|
    total_days = days_in_month(year, current_month)
    1.upto(total_days).each do |current_day|
      weekday = Date.new(year, current_month, current_day).cwday
      counter += 1 if weekday == 5 && current_day == 13
    end
  end
  counter
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2