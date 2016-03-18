def sum(a, b)
  a + b
end

puts sum(1,2)
puts sum 1,2

def sum(a, b = 0)
  a + b
end

puts sum(1,2)
puts sum(1)


def sum(a, b = a)
  a + b
end

puts sum(1,2)
puts sum(1)
