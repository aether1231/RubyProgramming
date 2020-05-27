print 'User input: '
user_input = gets.chomp.downcase!
if user_input.include? 's'
    puts 's present'
    user_input.gsub!(/s/, 'th')
else
    puts 'no s present'
end
puts 'user_input: '
puts user_input