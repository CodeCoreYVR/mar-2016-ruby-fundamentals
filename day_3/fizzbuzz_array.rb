my_array = Array.new # my_array = []

for i in 1..100
  if i % 3 == 0 && i % 5 == 0
    my_array << "FIZZBUZZ"
  elsif i % 3 == 0
    my_array << "FIZZ"
  elsif i % 5 == 0
    my_array << "BUZZ"
  else
    my_array << i
  end
end

print my_array
puts ""
