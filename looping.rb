puts "While loop\n"
i = 1
dlim = ""
while i < 11
    if i > 1
        dlim = ", "
    end
    print dlim + i.to_s
    i += 1
end

puts "\nUntil loop"
i = 1
dlim = ""
until i == 8
    if i > 1
        dlim = ", "
    end
    print dlim + i.to_s
    i += 1
end

puts "\nfor loop with exclusive ..."
dlim = ""
for i in 1...10
    if i > 1
        dlim = ", "
    end
    print dlim + i.to_s
end

puts "\nfor loop with inclusive .."
dlim = ""
for i in 1..10
    if i > 1
        dlim = ", "
    end
    print dlim + i.to_s
end

puts "\nloop loop with inclusive .."
dlim = ""
i = 1
loop {
    if i > 1
        dlim = ", "
    end
    print dlim + i.to_s
    i += 1
    break if i > 6
}

puts "\nfor loop with next"
dlim = ""
for i in 1..10
    next if i % 2 == 1
    if i > 1
        dlim = ", "
    end
    print dlim + i.to_s
end