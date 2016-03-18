total = 0
loop do
  print "Give me a number: "
  number = gets.chomp
  if number == "exit"
    puts "The sum of your numbers is: #{total}"
    break
  end
  total += number.to_i
end
