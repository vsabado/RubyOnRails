dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
# Write code here
somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
# Write code here
puts somehash[key]
end

# Execution flow
while true #Alternatively you can use loop do
# Write your program execution code here
puts "Would you like to look up the area code? (Y/N)"
input = gets.chomp.downcase
break if input != "y"
puts get_city_names(dial_book)
puts "Choose a city"
city = gets.chomp.downcase
puts get_area_code(dial_book, city)
end