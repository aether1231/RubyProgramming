def factorial(i)
    j = 1
    i.times{|x|
        j *= (x + 1)
    }
    return j
end

puts factorial(5).to_s