def my_method(a, b)
  puts "A is #{a}"
  puts "First name is #{b[:first_name]}"
  puts "Last name is #{b[:last_name]}"
end

my_method(10, {first_name: "Tam", last_name: "Kbeili"})
my_method 10, {first_name: "Tam", last_name: "Kbeili"}
my_method 10, first_name: "Tam", last_name: "Kbeili"
