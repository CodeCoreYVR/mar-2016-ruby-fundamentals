# solution 1
print "Give me number 1 "
num1 = gets.chomp
print "Give me number 2 "
num2 = gets.chomp
result = num1.to_i * num2.to_i
puts "The result of your multiplication is: #{result}"

# solution 2
print "Give me number 1 "
# in this case we don't need to call `.chomp` on it because we're converting
# the string to an integer which means it will ignore the `\n` character at
# the end
num1 = gets.to_i
print "Give me number 2 "
num2 = gets.to_i
result = num1 * num2
puts "The result of your multiplication is: #{result}"
