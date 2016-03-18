puts "Hello"

begin
  10 / 0
rescue ZeroDivisionError => e
  puts "I caught the zero division error #{e.backtrace}"
rescue NoMemoryError => e
  puts "I caught the no memory error"
rescue => e
  puts "I caugh an unknown error #{e.message} "
end

puts "Bye"
