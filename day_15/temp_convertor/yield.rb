def html_generator
  puts "<html>"
  puts "<head>"
  puts "</head>"
  puts "<body>"
  yield
  puts "</body>"
  puts "</html>"
end

html_generator do
  puts "<h1>Hello World</h1>"
end
puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
html_generator do
  puts "<h1>About us</h1>"
end
