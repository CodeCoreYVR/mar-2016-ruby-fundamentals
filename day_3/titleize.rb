puts "Give me a sentence"

words = gets.chomp.split(" ") # array of words from the user

words.each do |word|
  word.capitalize!
end

puts words.join(" ")
