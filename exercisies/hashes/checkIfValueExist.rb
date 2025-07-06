#Check if Key Exists
#Input: {name: "Luis", country: "Argentina"} → check :age
#Expected Output: false

input= {name: "Luis", country: "Argentina"}

unless input[:age]
    puts "False"
end

#merge hashes

input2={age:"50",ocupation:"asdw"}

input=input.merge(input2)
puts input
