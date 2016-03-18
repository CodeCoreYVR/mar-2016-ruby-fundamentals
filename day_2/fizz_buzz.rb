number = 1
while number <= 100
  if number % 5 == 0 && number % 3 == 0
    puts "FIZZBUZZ"
  elsif number % 3 == 0
    puts "FIZZ"
  elsif number % 5 == 0
    puts "BUZZ"
  else
    puts number
  end
  number += 1
end

for number in 1..100
  if number % 5 == 0 && number % 3 == 0
    puts "FIZZBUZZ"
  elsif number % 3 == 0
    puts "FIZZ"
  elsif number % 5 == 0
    puts "BUZZ"
  else
    puts number
  end
end
