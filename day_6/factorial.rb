def factorial(number)
  if number < 2
    1
  else
    number * factorial(number - 1)
  end
end
