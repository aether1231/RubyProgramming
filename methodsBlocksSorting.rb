def factorial(i)
    j = 1
    i.times{|x|
        j *= (x + 1)
    }
    return j
end

def add(*args)
    sum = 0;
    args.each{|arg|
        sum += arg
    }
    return sum
end

def are_contiguous?(*args)
    contig = false
    args.each{|arg|
        next if arg == args[0]
        puts "#{arg}"
        
    }
end

puts 'function with fixed number of arguments'
puts factorial(5).to_s

puts 'function with variable number of arguments'
puts add(1,2,3,4,5).to_s
are_contiguous?(1,2,3,4,5).to_s

puts 'simple sort'
puts [2,4,7,10,13,1,-2,5,21,44].sort!

puts 'combined comparison operator <=>'
puts -1 <=> 1
puts 1 <=> 1
puts 1 <=> -1

puts 'combined comparison operator <=> in block sort'
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
books.sort!{|firstbook, secondbook|
    firstbook <=> secondbook
}
puts books
