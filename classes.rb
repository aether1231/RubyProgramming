puts "Basic classes, constructor, scope and instatiation"
class Person
    @@people_count = 0
    def initialize(name, age, profession)
        @name = name
        @age = age.to_s
        @profession = profession
        @@people_count += 1
        puts "Person " << @@people_count.to_s << ": My name is " << @name << ", age " << @age << ". I work as a " << @profession
    end
end

Person.new('Kevin', 56, 'Developer')
Person.new('Paul', 61, 'Lecturer')
Person.new('Tatiana', 43, 'Housewife')

puts "\nInheritance"
class Vehicle
    @@type = 'Vehicle'
    def initialize
        puts "New vehicle created"
    end
end

class Car < Vehicle
    def initialize
        @type = 'Car'
        puts "New car created"
    end
end

class Van < Vehicle
    def initialize
        @type = 'Van'
        puts "New van created"
    end
end

puts "\nsuper class method keyword"
class Truck < Vehicle
    def initialize
        puts "Instead of new truck created"
        super
    end
end

x = Vehicle.new()
y = Car.new()
z = Van.new()
a = Truck.new()

puts "\nClass review"
class Message
    @@messages_sent = 0
    def initialize(from, to)
        @from = from
        @to = to
        @@messages_sent += 1
        puts "Message: " << @from << " to " << @to
    end
end

class Email < Message
    def initialize(subject)
        @subject = subject
        puts "Email: " << @subject
    end
end

class Email2 < Message
    def initialize(me, you)
        super
    end
end

my_message = Message.new("me", "you")
my_email = Email.new("subject")
my_email2 = Email2.new("me", "you")
