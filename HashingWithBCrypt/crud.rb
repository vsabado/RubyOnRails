module Crud
  require 'bcrypt'
  puts "Module CRUD has been used"
#The comments are there for testing only. I've uncommented them to create a module

# my_password = BCrypt::Password.create("my password")
# my_password1 = BCrypt::Password.create("my password")
# my_password2 = BCrypt::Password.create("my password")
#
# puts my_password
# puts my_password1
# puts my_password2
#
# puts my_password == "my password"

# my_password = BCrypt::Password.new("$2a$10$MR7gQDWSjcVPsC88EG9rNeKafzZRHds2DtiBJGbiJE4CV/RqC7mke")
# puts my_password == "my password"     #=> true
# my_password == "not my password" #=> false

# users = [
#     {username: "vlad", password: "123"},
#     {username: "abby", password: "345"},
#     {username: "regan", password: "567"}
# ]

  def self.create_hash_digest(password) #Takes a password and turns it into a hashed version
    BCrypt::Password.create(password)
  end

  def self.verify_hash_digest(password) #Takes a hashed password and turns it into a string version of the password
    BCrypt::Password.new(password)
  end

  def self.create_secure_users(list_of_users) #Takes the hashtable user and turns all the passwords into hashed version, and then returns the newly formed list
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

# new_users = create_secure_users(users)

  def self.authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
        return user_record
      end
    end
    "Credentials were not correct"
  end
# p authenticate_user("vlad", "123", new_users)
end

#Note that you may also use Crud.authenticate_user
#Such that Crud references the module name
#The use of self is more general and is the better choice