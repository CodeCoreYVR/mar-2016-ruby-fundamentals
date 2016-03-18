def greetings
  puts "Hello"
  # block_given? will be true if you call the method with a block
  if block_given?
    # this will execute the block passed to the method
    yield
  else
    puts "No block was provided!!"
  end
  puts "Bye"
end

greetings do
  puts "I'm here in the block"
end

greetings do
  puts "I'm here in another block!"
end

greetings { puts "I'm here in a third block!!" }

greetings
