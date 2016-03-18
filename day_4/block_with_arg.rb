def my_method
  puts ">>>>>"
  y = 10
  yield(y) if block_given?
  puts ">>>>>"
end

my_method do |x|
  puts x * x
end

my_method do |number|
  puts number + number
end
