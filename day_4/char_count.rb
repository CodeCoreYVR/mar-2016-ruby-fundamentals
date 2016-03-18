words = ["hello", "greetings", "hola", "hi"]

string_lengths = {}

words.each do |word|
  # string_lengths[:"#{word}"] = word.length
  string_lengths[word.to_sym] = word.length
end

print string_lengths
