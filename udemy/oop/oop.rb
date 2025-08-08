class Student

  attr_accessor :first_name, :last_name, :age, :username
  #attr_reader :username

  #instint variable
  @username
  @first_name
  @last_name
  @age

  #setters
  def set_first_name(name)
    @first_name = name
  end
  def set_last_name(name)
    @last_name = name
  end
  def set_age(age)
    @age = age
  end
  def set_username(username)
    @username=username
  end

  #getters
  def get_first_name
    @first_name
  end
  def get_last_name
    @last_name
  end
  def get_age
    @age
  end

  #initialize
  def initialize(first_name = nil,last_name = nil,age = nil,username = nil)
    @first_name=first_name
    @last_name=last_name
    @age=age
    @username=username
  end
  
  #to string method
  def to_string
    puts "First name: #{@first_name}"
    puts "Last name: #{@last_name}"
    puts "Age: #{@age}"
  end


end

#INITIALIZER
#juan2=Student.new("Juan","Berrios","giovanni_rbn",22,)
#juan2.to_string

#EMPTY INITIALIZER
#juan=Student.new

#WITH GETTER AND SETTERS
#juan.set_first_name("juan")
#juan.set_last_name("cñooo")
#juan.set_age("5")
#puts juan.get_first_name
#puts juan.get_last_name
#puts juan.get_age

#WITH ATTR_ACCESSOR
#juan.last_name="juan"
#juan.first_name="juan"
#juan.age=10
#juan.set_username("username")
#puts juan.last_name
#puts juan.first_name
#puts juan.age
#puts juan.username