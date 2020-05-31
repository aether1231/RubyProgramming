puts "collect method (like map)"
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
puts "original array: " << fibs.to_s

doubled_fibs = fibs.collect{|x|
  x * 2
}

puts "fibs.collect{|x| x * 2 }" << doubled_fibs.to_s

puts "yield statement"
def testYield(input)
  puts yield("James")
  puts yield(input)
  puts "end"
end

testYield('Alfred'){|name|
  puts "Name is " << name
}

puts "double"
def double(val)
  yield(val)
end

double(2){|x|
  puts x * 2
}