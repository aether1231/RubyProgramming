matz = Hash.new("undefined")
matz["First name"] = "Yukihiro"
matz["Last name"] = "Matsumoto"
matz["Age"] = 47
matz["Nationality"] = "Japanese"
matz["Nickname"] = "Matz"

matz.each{|key, value|
    puts "#{value}"
}
#puts (matz['empty'] == nil)
puts (matz['empty'])

puts 'Hashes using symbol keys'
hash = {'first' => :James, 'second' => :Kevin, 'third' => :McCracken}
hash.each{|x, y|
    puts y.to_s
}

my_symbol = :Kevin
my_string = 'James'
puts my_symbol.to_s
puts my_string.to_sym
puts my_string.intern # same as to_sym

puts 'New symbol syntax'
x = {one: 1, two: 2, three: 3}
x.each{|x, y|
    puts y
}

puts 'Filtering hashes'
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
movie_ratings.select!{|x, y|
    y >= 2
}

movie_ratings.each_key{|k|
    puts k
}

movie_ratings.each_value{|v|
    puts v
}