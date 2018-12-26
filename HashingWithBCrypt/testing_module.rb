require_relative 'crud' #Works if the module is in the same directory

# $LOAD_PATH << "." #If not in the same directory. The dot is the universal sign for current directory
# require 'crud'

users = [
    {username: "vlad", password: "123"},
    {username: "abby", password: "345"},
    {username: "regan", password: "567"}
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users