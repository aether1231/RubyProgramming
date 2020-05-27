# single-line comment
=begin
multi-line comment
multi-line comment
=end

#input
print 'What\'s your first name?'
first_name = gets.chomp
first_name.capitalize!          # applies method to first_name
print 'What\'s your last name?'
last_name = gets.chomp
last_name.capitalize!
print 'What\'s your city?'
city = gets.chomp
city.capitalize!
print 'What\'s your state?'
state = gets.chomp
state.upcase!
puts "Your first name is #{first_name}"
puts "Your last name is #{last_name}"
puts "Your city is #{city}"
puts "Your state is #{state}"