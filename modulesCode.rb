puts "Modules and includes"
require 'date'
include Math
$LOAD_PATH << '.'
require 'modules'

puts Quadratic::solve(1, 2, 1)
puts Date.today
puts PI

puts "\nMixins"
module MartialArts
    def swordsman
        puts "I'm a swordsman"
    end
end

class Ninja
	include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
	include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end

ninja = Ninja.new('McTavish')
samurai = Samurai.new('McAlistair')
ninja.swordsman()
samurai.swordsman()

puts "\nextend for adding class methods"
module ThePresent
    def now
      puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
    end
  end
  
  class TheHereAnd
    extend ThePresent
  end
  
  TheHereAnd.now

  puts "\nReview"
  module Languages
    FAVE = "Javascript"
  end

  class Application
    include Languages
    def initialize
        puts FAVE
    end

    public def print_status
        puts "All systems go!"
    end

    private def password
        return 12345
    end
  end

  app = Application.new


