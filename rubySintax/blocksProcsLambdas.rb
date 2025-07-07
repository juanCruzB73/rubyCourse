#🔷 1. Blocks
#A block is a chunk of code passed to a method. You can use yield or &block to invoke it.
def greet
  puts "Before the block"
  yield
  puts "After the block"
end

greet { puts "Hello from the block" }

#With parameter
def greet_with_name
  yield("Alice")
end

greet_with_name { |name| puts "Hello, #{name}!" }

=begin
yield("Alice")
Inside the method, you call yield, which invokes the block that was passed to the method.
The argument "Alice" is passed into the block.

Block { |name| puts "Hello, #{name}!" }
This is the block of code being passed to greet_with_name.
It receives the value "Alice" as the variable name, and then prints:
=end

#🔷 2. Proc
#A Proc is an object representing a block of code.

say_hi = Proc.new { puts "Hi!" }
say_hi.call

#Whit arguments
say_hi = Proc.new { |name| puts "hello, #{name}!" }
say_hi.call("elliot")

# 3. Lambda
#A lambda is similar to a Proc but with stricter behavior:
say_hello = lambda { puts "Hello! lambda" }
say_hello.call  # => Hello!
#manera mas simple
multiply = -> (x, y) { x * y }
puts multiply.call(2, 3)