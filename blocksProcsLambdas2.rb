puts "proc to round down floats"
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new{ |x| x.floor }
floats.collect!(&round_down)
puts floats.to_s

puts "\ngreeter proc"
def greeter
    yield
end
phrase = Proc.new{|x| print "Hello there "}
puts greeter(&phrase)

puts "\ncall"
hProc = Proc.new{|x| puts "Hello!"}
puts hProc.call

puts "\nsymbol method map integers to strings"
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers_array.map!(&:to_s)
puts "#{numbers_array}"

puts "\nsymbol method map strings to integers"
numbers_array = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
numbers_array.map!(&:to_i)
puts "#{numbers_array}"

puts "\nlamda - string array to symbol array"
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
symbolize = lambda { |x| x.to_sym }
puts "#{strings.collect!(&symbolize)}"

puts "l\nlambda function to determine symbol array elements"
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
isSymbol = lambda{ |x| x.is_a? Symbol }
puts "#{my_array.map!(&isSymbol)}"

puts "\nFilter mixed array elements to exclude all but integers via lambda function"
odds_n_ends = [:hello, "Kevin", "James", 1.1, 10, -2, "McCracken", :ruby]
getInt = lambda{ |x| x.is_a? Integer }
result = odds_n_ends.select(&getInt)
puts "#{result}"

puts "\nFilter integer array to exclude all but integers via proc"
integer_array = [200, 34, 2019, -1000, 256, 345, 1, 367]
under100 = Proc.new{ |x| x < 100 }
integer_array.select!(&under100)
puts "#{integer_array}"