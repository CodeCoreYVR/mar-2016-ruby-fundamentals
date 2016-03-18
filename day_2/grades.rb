print "Tell me your score(0-100): "
score = gets.to_i

# Solution 2
if score > 95
  puts "A"
elsif score > 85
  puts "B"
elsif score > 60
  puts "C"
elsif score > 45
  puts "D"
else
  puts "F"
end


# Solution 1
# if score.between?(85, 100)
#   puts "You got an A"
# elsif score.between?(70, 84)
#   puts "You got a B"
# elsif score.between?(50, 69)
#   puts "You got a C"
# elsif score.between?(30, 49)
#   puts "You got a D"
# else
#   puts "You got an F"
# end
