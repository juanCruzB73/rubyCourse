=begin
What is a Module?
A module is like a class, but it cannot be instantiated (you can't do ModuleName.new).
It’s used to group methods, constants, and namespaces, or to be mixed into classes.
=end

module Greetable
  def greet
    puts "Hello!"
  end
end

#🔷 Mixin: Include a Module in a Class
module Greetable
  def greet
    puts "Hello from #{self.class}!"
  end
end

class Person
  include Greetable
end

person = Person.new
person.greet  # => Hello from Person!
