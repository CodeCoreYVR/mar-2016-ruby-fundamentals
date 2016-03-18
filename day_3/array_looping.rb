my_array = [[1,2,3], [4,5,6], [7,8,9]]

puts my_array.flatten

my_array.flatten.each do |num|
  puts num
end

my_array.each do |nested_array|
  nested_array.each do |num|
    puts num
  end
end
