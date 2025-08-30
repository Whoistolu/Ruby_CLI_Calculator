require_relative './calculator'

calc = Calculator.new

puts 'welcome to Ruby Calculator App'
puts 'Enter expressions like: 2 + 3, 7 / 2, -4 * 8'

print 'Enter your first number: '
input1 = gets.chomp

parts = input1.split(' ')

num1 = parts[0].to_f
operator = parts[1]
num2 = parts[2].to_f

puts "First number: #{num1}"
puts "Operator: #{operator}"
puts "Second number: #{num2}"

result = case operator
         when '+'
           calc.add(num1, num2)
         when '-'
           calc.subtract(num1, num2)
         when '/'
           calc.divide(num1, num2)
         when '*'
           calc.multiply(num1, num2)
         else
           'Unknown Operator entered'
         end

puts "Result: #{result}"
