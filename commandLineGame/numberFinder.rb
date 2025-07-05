def binary_search
    status=true
    numbers = (1..100).to_a
    number=(numbers.length/2)-1
    while status==true do
        puts "is your number #{numbers[number]}?"
        choice1=gets.chomp
        if choice1 == "y"
            puts "que bueno"
            status=false
            break
        end
        puts "is your number greater than #{numbers[numbers.length / 2]-1}? [Y/N]"
        choice=gets.chomp
        if choice == "y"
            numbers = numbers.drop(number + 1)
            number = (numbers.length/2)-1
        else
            numbers = numbers.take(number)
            number = (numbers.length/2)-1
            #puts number
        end
    end
end

puts "Think a number between 1 and 100"
binary_search