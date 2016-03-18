names = ["anne", "frank", "quan", "denis", "michael"]
cap_names = []

names.each do |name|
  puts name.capitalize
  cap_names.push(name.capitalize)
end

print names
print cap_names
