#Find the Maximum Value
#Input: [5, 17, 3, 9]
#Expected Output: 17

input = [5, 17, 18, 9]
max=input[0]
for i in 1..input.length-1
    if(input[i]>max)
        max=input[i]
    end
end
puts max