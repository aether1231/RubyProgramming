movies = {'A Man for All Seasons' => 10}
print 'What operation: '
choice = gets.chomp

until choice == 'end' do
    case choice
        when 'add'
            print 'Movie title: '
            title = gets.chomp.to_sym
            print "\nRating: "
            rating = gets.chomp.to_i
            if movies.has_key? title
                puts 'Movie has already been added'
            else
                movies[title] = rating
                puts "#{title} => #{movies[title]} was added"
            end
        when 'update'
            print 'Movie title: '
            title = gets.chomp.to_sym
            if movies.has_key? title
                print "\nRating: "
                rating = gets.chomp.to_i
                movies[title] = rating
                puts "#{title} => #{movies[title]} was updated"
            else
                puts "No such movie has been added"
            end
        when 'display'
            movies.each{|x, y|
                puts "#{x} #{y}"
            }
        when 'delete'
            print 'Movie title: '
            title = gets.chomp.to_sym
            if movies.has_key? title
                movies.delete(title)
                puts "#{title} was deleted"
                movies.each{|x, y|
                    puts "#{x} #{y}"
                }
            else
                puts "No such movie exists"
            end
        else
            puts 'Error'
    end
    print 'What operation: '
    choice = gets.chomp
end

