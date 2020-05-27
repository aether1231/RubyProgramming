def alphabetize(arr, reverse=false)
    arr.sort!{|x, y|
        if reverse != false
            x <=> y
        else
            y <=> x
        end
    }
    return arr
end

arr = [2, 4, 3, 7, 1, 3, 3, 8, 2]
puts alphabetize(arr).to_s
puts alphabetize(arr, true).to_s