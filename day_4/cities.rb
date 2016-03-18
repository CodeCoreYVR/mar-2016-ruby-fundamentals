cities = { "BC" => ["Vancouver", "Richmond"],
           "AB" => ["Edmonton", "Calgary"]}

cities.each do |province, cities_array|
  puts "#{province}: #{cities_array.sort.join(', ')}"
end
