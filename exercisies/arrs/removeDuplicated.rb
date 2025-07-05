#Remove Duplicates
#Input: [1, 2, 2, 3, 4, 4, 5]
#Expected Output: [1, 2, 3, 4, 5]

input = [1, 2, 2, 3, 4, 4, 5]
result=[]
hash={}
input.each do |num|
    unless hash[num]
        hash[num]=true
        result.push(num)
    end
end
puts result