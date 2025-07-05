#Filter Even Numbers
#Input: [1, 2, 3, 4, 5, 6]
#Expected Output: [2, 4, 6]

def isEven(number)
    number % 2 == 0
end

input = [1, 2, 3, 4, 5, 6]
result=[]

#way one
#input.each do |num| 
#    unless isEven(num)
#        result.push(num)
#    end
#end

#way two
for i in 0..input.length-1
    unless isEven(input[i])
end

puts result