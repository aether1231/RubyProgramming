puts "\nobject.each"
x = [1,2,3,4,5,6,7,8,9,10]
dlim = ""
x.each{|x|
    print dlim + x.to_s
    dlim = ", "
}

puts "\n\ninteger.times"
5.times{print "Hello World, "}

puts "\n\nwhile loop"
i = 1
dlim = ""
while i <= 10 do
    if i > 1
        dlim = ", "
    end
    print dlim + i.to_s
    i += 1
end

puts "\n\nuntil loop"
i = 5
dlim = ""
until i == 0 do
    if i < 5
        dlim = ", "
    end
    print dlim + i.to_s
    i -= 1
end

puts "\n\nfor loop"
i = 1
dlim = ""
for i in x
    print dlim + i.to_s
    i += 1
    dlim = ", "
end

puts "\n\nfloop loop"
loop {
    print dlim + i.to_s
    i += 1
    dlim = ", "
    break i > 10
}

puts "\n\ntimes loop"
5.times {|i|
    puts 'Iteration ' + (i + 1).to_s
}