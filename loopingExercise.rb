print 'Input text: '
text = gets.chomp
print "\nInput redaction: "
redact = gets.chomp
output = ''
textArray = text.split(' ')
textArray.each{|x|
    if x == redact
        output += 'REDACTED '
    else
        output += x + ' '
    end
}
puts output