print "Give me a number: "
number = gets.to_i

# bracket are optional in Ruby. So you can write it either:
# if number > 20
# or
# if (number > 20)
# you can only have one `if` and an optional `else`
# you can have as many `elsif` as you need
if number > 20
  puts "The number is big"
elsif number > 15
  puts "The number is medium"
else
  puts "The number is small"
end
