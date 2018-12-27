require_relative 'crud'
class Student
  include Crud
  attr_accessor :username, :email, :first_name, :last_name, :password
  @first_name
  @last_name
  @email
  @username
  @password

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

hashed_password = student1.create_hash_digest(student1.password)
puts hashed_password
