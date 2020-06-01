class Computer
    @@users = {}

    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        @@users[@username] = @password
        puts "#{@@users}"
    end

    def Computer.get_users
        return @@users
    end

    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "User name #{@username} added new file #{@files}"
    end
end

my_computer = Computer.new('Kevin', 'bagweed1270')
my_computer.create('test')
puts "#{Computer.get_users()}"