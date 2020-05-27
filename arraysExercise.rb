items = {}
print 'Input item: '
item = gets.chomp
until item == 'end' do
    if (items.has_key? item)
        items[item] += 1
    else
        items[item] = 1
    end
    print 'Input item: '
    item = gets.chomp
end
puts 'end'
items = items.sort_by{|key, value|
    value
}
items.reverse!
items.each{|key, item|
    puts "#{key} #{item}"
}
