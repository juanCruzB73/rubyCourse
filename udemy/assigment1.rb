puts "whats your first name"
first_name = gets.chomp
puts "whats your last name"
last_name = gets.chomp

puts "your complete name is: #{last_name} #{first_name}"
puts "your reverse name is: #{last_name.reverse} #{first_name.reverse}"
puts "the lengeth of your full name is #{last_name.length + first_name.length}"