=begin

input: two numbers  (bill amount and tip rate)
output: display tip amount and total bill w/tip included

Data Structure:
- float

Algorithm:
- Ask user for bill amount and tip rate
- Calculate tip amount from tip rate
- Calculate total bill w/tip included
- Output tip amount and total bill w/tip

Pseudocode:
- Ask user for bill amout
- Get user bill amount, convert to float (bill_amount)
- Ask user for tip rate in percent
- Get user tip rate, convert to float and divide by 100 (tip_rate)

- Calculate tip amount by multiplying bill amount x tip rate (tip_amount)
- Calculate total bill w/tip by adding tip_amount + bill_amount (total_bill)

- Output tip_amount
- Output total_bill
=end
# Further exploration
puts 'What is the bill?'
bill_amount = gets.to_f

puts 'What is the tip percentage?'
tip_rate = (gets.to_f) / 100

tip_amount = (bill_amount * tip_rate).round(2)
total_bill = (tip_amount + bill_amount).round(2)

puts "The tip is $#{format("%.2f", tip_amount)}"
puts "The total is $#{format("%.2f", total_bill)}"