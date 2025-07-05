#Reverse the Array
#Input: [1, 2, 3, 4]
#Expected Output: [4, 3, 2, 1]

input= [1, 2, 3, 4]
newArr=[]
for i in (input.length-1..0).step(-1)
    newArr.push(input[i])
end

puts newArr