users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

def auth_users(username,password,list_of_users)
  list_of_users.each do |user|
    if user[:username]==username && user[:password]==password
      return user
    end
  end
  return "usuario no encontrado"
end

puts "AUTHENTICATOR"
25.times {print "-"}

while true
  puts "press n to exit\n"
  option=gets.chomp.downcase
  puts "\n"
  if option=="n\n"
    break
  end
  print "ingrese username\n"
  username=gets.chomp
  print "ingrese contraseña\n"
  password=gets.chomp

  puts auth_users(username,password,users)

end