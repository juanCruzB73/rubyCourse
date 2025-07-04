greeting="hello"
age=22
name="juan"

def firstProgram(greeting, name, age)#RUBY CANT READ VARIABLES THAT ARE OUTSIDE THE FUNTION
    puts "#{greeting} #{name}"
    while age >= 18 do
        puts "the age is #{age} you are a grown up, a year will be rested"
        age-=1
    end
    if age < 18
        puts "you are underage, making you age to 22"
        for i in 0..(22-age)
            puts age
            age+=1
        end
    end
    puts "exiting program..."
end

firstProgram(greeting, name, age)
        



#if x > 2
    #puts "x is greater than 2"
#elsif x <= 2 and x != 0
    #puts "x is 1"
#else
    #puts "I can't guess the number"
#end


#while i < num do
    #puts i
#end


#for i in 0..2
#puts i

#def say_hello
#  puts "Hello from Ruby!"
#end
#
#say_hello