users = [
    {username: "vlad", password: "123"},
    {username: "abby", password: "345"},
    {username: "regan", password: "567"}
]

def authUser(username, password, listOfUsers)
  listOfUsers.each do |user|
    if user[:username] == username && user[:password] == password
      return user
    end
  end
  "Credentials were not correct" #Return is implied here
end

puts "Welcome to the authenticator"
50.times {print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 0
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  result = authUser(username, password, users)
  puts result
  puts "Press q to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "q"
  attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4 #Wow, this is interesting