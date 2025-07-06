#Delete a Key
#Input: {x: 1, y: 2, z: 3} → delete :y
#Expected Output: {x: 1, z: 3}

input= {x: 1, y: 2, z: 3}
input.delete(:y)
puts input