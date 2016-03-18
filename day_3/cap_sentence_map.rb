puts "Give me a sentence"

# solution 1
sentence = gets.chomp.split

sentence.map! {|word| word.capitalize }

puts sentence.join(" ")

# solution 2
puts gets.chomp.split.map {|word| word.capitalize }.join(" ")
# puts gets.chomp.split.map(&:capitalize).join(" ")
