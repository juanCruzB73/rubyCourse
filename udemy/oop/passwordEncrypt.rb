require 'bcrypt'

module Auth
  users = [
    { username: "mashrur", password: "password1" },
    { username: "jack", password: "password2" },
    { username: "arya", password: "password3" },
    { username: "jonshow", password: "password4" },
    { username: "heisenberg", password: "password5" }
  ]
  #@users	A module instance variable, available inside any method in the module
  @users=users

  #This is a module: BCryptPassword.create
  # :: is scope resolution operator lets you access constants (classes, modules, or constants) inside another module/class.
  #BCrypt::Password accesses the Password class defined inside the BCrypt module.

  def self.encrypt_password(password)
    return BCrypt::Password.create(password)
  end

  def self.verify_hash_digest(password)
    #.new(...)
    #This is a call to the constructor method (initialize) of the BCrypt::Password class.
    #So you're creating a new instance of BCrypt::Password by passing in an existing hashed password string.
    #This is expected to be a BCrypt hashed string (not the plain password, but the hash).
    return BCrypt::Password.new(password)
  end

  def self.create_secure_user(users)
    users.each do |user|
      encrypted_password=encrypt_password(user[:password])
      user[:password]=encrypted_password
    end
    return users
  end

  def self.auth_user(username,password,users=@users)
    users.each do |user|
      if user[:username]==username && verify_hash_digest(user[:password])==password
        return "Login succesfull from user: #{username}"
      end
    end
    return "user not found"
  end

  create_secure_user(users)

end