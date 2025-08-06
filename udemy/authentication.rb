users=[
  {username:"jonh doe", password:"123456"},
  {username:"Elliot rodger", password:"asdw"}
]

puts "AUTHENTICATOR"
25.times {print "-"}

while true do
  puts "ingrese username"
  username=gets.chomp
  puts "ingrese contraseña"
  password=gets.chomp

  condition=true

  users.each do |user|
    if user[:username]==username && user[:password]==password
      puts user
      condition=false
      break
    end
  end

  if condition==false
    break
  else
    puts "password doesnt match"
  end

end