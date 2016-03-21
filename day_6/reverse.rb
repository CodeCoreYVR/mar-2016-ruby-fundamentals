# Solution 1
def reverse(word)
  if word.size == 1
    word
  else
    word[-1] + reverse(word[0..-2])
    # word[-1] + reverse(word.chop)
  end
end

puts reverse("hello world")

# Solution 2
def reverse(word)
  (word.size < 1) ? word : word[-1] + reverse(word[0..-2])
end

puts reverse("hello world")
puts reverse("g")
puts reverse("")
