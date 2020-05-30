test = true
puts "concur statement" if test
puts "concur again" unless test
puts test ? "Concur with statement": "Refute statement"

puts "case when then statement"
jira = 3
case jira
    when 1 then out = 'crtitcal'
    when 2 then out = 'major'
    when 3 then out = 'normal'
    when 4 then out = 'minor'
end
puts out

puts "\nconditional assignment operator"
x = 10
puts "x = " + x.to_s
x ||= 1
puts "x = " + x.to_s
x = 1
puts "x = " + x.to_s

puts "\nImplicit function return - last evaluated expression"
def implicit_return(a = 1, b = 2)
    (a + b)
end
puts "Implicit return result = " + implicit_return().to_s

puts "upto and downto"
dim = ""
-5.upto(5) {|x|
    print dim + x.to_s
    dim = ", "
}

puts ""
dim = ""
5.downto(-5) {|x|
    print dim + x.to_s
    dim = ", "
}

puts ""
dim = ""
"L".upto("P") {|letter|
    print dim + letter
    dim = ", "
}

puts ".next and .respond_to"
puts "3.next: " + 3.next.to_s
puts "3.respond_to?(:next): " + 3.respond_to?(:next).to_s

puts "array concatination <<"
puts "[1, 2, 3] << 4: " + ([1, 2, 3] << 4).to_s
puts "'Happy ' << 'Birthday': " 'Happy ' << 'Birthday'