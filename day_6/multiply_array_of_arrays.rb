def multiply(array)
  if array.size == 0
    1
  else
    result = array[0].is_a?(Array) ? multiply(array[0]) : array[0]
    result * multiply(array[1..-1])
  end
end

puts multiply([1,2,3])
puts multiply([1,2,[6,7]])
puts multiply([1,2,[6,7], [5,6]])
puts multiply([1,2,[6,[7,8]]])
puts multiply([[2,3],1,2,[6,[7,8]]])


# Solution 2
# def multiply(array)
#   if array.size < 2 && array[0].kind_of?(Array) == false
#     return array[0]
#   elsif array[0].kind_of?(Array)
#     multiply(array[0]) * multiply(array[1..-1])
#   else
#     array[0] * multiply(array[1..-1])
#   end
# end
#
# puts multiply([1,2,3])
# puts multiply([1,2,[6,7]])
# puts multiply([1,2,[6,7], [5,6]])
# puts multiply([1,2,[6,[7,8]]])
