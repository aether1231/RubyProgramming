print 'Input an integer: '
i = Integer(gets.chomp)
if i < 0
    puts 'Negative integer'
elsif i > 0
    puts 'Positive integer'
else
    puts 'Zero'
end