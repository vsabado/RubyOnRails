class Student
  # attr_accessor :first_name #This will act us getter and setter without needing to create the setter/getter as we did below
  attr_accessor :username, :email, :last_name, :password
  # attr_reader #This only allows the getter functionality
  # attr_writer #This allows only the setter functionality
  @first_name
  @last_name
  @email
  @username
  @password

  # def first_name(name) #This acts as the setter. It works but it's not the preferred
  #   @first_name = name
  # end

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def first_name=(name) #This is the preferred setter notation
    @first_name = name
  end

  def first_name
    @first_name
  end

  def to_s #When a print is called, the following will be printed
    "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email}, username: #{@username}, password: #{@password}"
  end
end

student1 = Student.new("Vlad", "Sab", "Vale", "vsabad", "123")
student2 = Student.new("Abby", "Roxas", "Moot", "abbykate", "142")
# vlad.first_name("Vlad") #Sets the first_name variable to "Vlad"
# student.first_name = "Vlad" #Preferred setter notation
# student.last_name = "Sab"
# student.email = "vsabad"
# student.username = "Vale"
# puts "Student's first name is #{student1.first_name}"
# puts "Student's last name is #{student1.last_name}"
# puts "Student's email is #{student1.email}"
# puts "Student's user name is #{student1.username}"
puts student1
puts student2

student1.email = student2.email
puts student1

