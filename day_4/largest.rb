def largest(*numbers)
  # numbers.sort.last
  numbers.max
end

puts largest 6,7,12,5,3,6,8

def largest(a, *numbers)
  result = a
  numbers.each do |number|
    result = number if number > result
  end
  result
end

puts largest 6,7,12,5,3,6,8
