class Person
  # Constructor method
  def initialize(name, age)
    @name = name
    @age = age
  end

  # Instance method
  def greet
    puts "Hello, my name is #{@name} and I'm #{@age} years old."
  end

  def birthday
    @age += 1
    puts "Happy birthday! You are now #{@age}."
  end
end

person1=Person.new("asdw",25)

person1.greet
#🔷 3. Inheritance

class Employee < Person
    def initialize(name,age,workedHours)
        super(name,age)
        @workedHours=workedHours
    end
    def printWorkedHours
        puts "The employee #{@name} has worked #{@workedHours}"
    end
end

employee1=Employee.new("asdw",25,35)

employee1.birthday
employee1.printWorkedHours

#🔷 5. Abstraction (via modules or base classes)

class Vehicle
  def start_engine
    raise NotImplementedError, "This method must be implemented" #this set a method to be defined 
  end
end

class Car < Vehicle
  def start_engine
    puts "Engine started"
  end
end

Car.new.start_engine  # => Engine started