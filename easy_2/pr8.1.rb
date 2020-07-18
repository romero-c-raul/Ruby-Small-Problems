def compute_sum(integer)
  total = 0
  (1..integer).each do |number|
    total += number
  end
  total
end

def compute_product(integer)
  total = 1
  (1..integer).each do |number|
    total *= number
  end
  total
end


puts "Please enter an integer greater than 0: "
max_integer = gets.to_i
max_integer_range = (1..max_integer)

answer = ''

loop do
  puts "Enter 's' to compute sum, 'p' to compute the product"
  answer = gets.chomp.downcase
  break if (answer == 's' || answer == 'p')
  puts "Wrong input. Try again!"
end

if answer == 's'
  integer_sum = compute_sum(max_integer)
  puts "The sum of the integers between 1 and #{max_integer} is #{integer_sum}."
elsif answer == 'p'
  integer_product = compute_product(max_integer)
  puts "The product of the integers between 1 and #{max_integer} is #{integer_product}."
end