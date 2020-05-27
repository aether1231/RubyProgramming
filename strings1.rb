x = "Hello "
y = "World"
puts "x + y string concatination: " + (x + y)
puts "upcase string method: " + (x + y).upcase
puts "downcase string method: " + (x + y).downcase
puts " Double-quoted strings support string interpolation #{ x }"
puts ' Single-quoted strings don\'t support string interpolation #{ x }'
puts "strip string method: " + "  Hello World  ".strip()
puts "length string method: " + "Hello World".length.to_s
puts "reverse string method: " + "dohteM esreveR".reverse
puts "incude string method: " + ("  Hello World  ".include? "World").to_s
puts "get 5th character of 'Hello World': " + "Hello World"[4]
puts %{ Arbitrary \{\} delimiters. }
puts %! Arbitrary \!\! delimiters. !
puts %Q{ %Q\{\} equivalent to double-quoted string }
puts %q[ %q\[\] equivalent to single-quoted string ]
puts %x! ls; echo "%x\!\! executes command line " !
