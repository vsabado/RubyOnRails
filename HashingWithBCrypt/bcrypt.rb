require 'bcrypt'

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

users = [
    {username: "vlad", password: "123"},
    {username: "abby", password: "345"},
    {username: "regan", password: "567"}
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

puts create_secure_users(users)

