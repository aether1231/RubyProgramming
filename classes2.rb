puts "public and private modifiers"
class Dog
    def initialize(name, breed)
        @name = name
        @breed = breed
    end

    public def bark!()
        puts "Woof!"
    end

    private def id()
        @id_number = 12345
    end
end

puts "\nattr_reader, attr_writer, attr_accessor"
class Person
    attr_reader :name
    attr_accessor :job
    attr_writer :age
    def initialize(name, age, job)
        puts "New person"
        @name = name
        @age = age
        @job = job
    end

    def details(name, job)
         puts "My name is " << @name << ", age " << @age << ". I work as a " << @profession
    end
end

person = Person.new('Kevin', 56, 'Developer')
puts person.name
person.job = 'Unemployed'
puts person.job
person.age = 26
puts person.age


