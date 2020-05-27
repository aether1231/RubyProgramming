print 'Input an integer: '
i = Integer(gets.chomp)
puts 'Input another integer: '
j = Integer(gets.chomp)
# if i < 0
#     puts 'Negative integer'
# elsif i > 0
#     puts 'Positive integer'
# else
#     puts 'Zero'
# end

unless i == j
    puts "i and j are different"
else
    puts "i and j are equal"
end

puts '! operator'
puts '!true = ' + (!true).to_s
puts "\n&& operator"
puts 'true && true = ' + (true && true).to_s
puts 'true && false = ' + (true && false).to_s
puts 'false && true = ' + (false && true).to_s
puts 'false && false = ' + (false && false).to_s
puts "\n|| operator"
puts 'true || true = ' + (true || true).to_s
puts 'true || false = ' + (true || false).to_s
puts 'false || true = ' + (false || true).to_s
puts 'false || false = ' + (false || false).to_s