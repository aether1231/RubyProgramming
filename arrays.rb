puts 'Multi-dimensional arrys'
x = [[0,0,0], [2,0,0], [2,2,0], [0,2,0], [1,1,1]]
x.each{|y|
    puts "#{y}\n"
}

puts "\nHashes"
x = {
    'name' => 'Kevin',
    'age' => 56,
    'height' => 1.86
}
x.each{|a, b|
    puts "#{a}: #{b}\n"
}
x.each{|a|
    puts "#{a}\n"
}
puts 'name = ' + x['name']
puts 'age = ' + x['age'].to_s
puts 'height = ' + x['height'].to_s

pets = Hash.new
pets['dog'] = 'Marty'
pets['cat'] = 'Ripley'
puts pets

puts "\nIterating over 2D arrays"
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
s.each{|x|
    x.each{|y|
        puts "#{y}"
    }
}