class MyClass
  def printLoop
    number = 3
    number.times{puts "I love ruby"}
  end

  def understandingEscape
    puts 'Vlad asked \'Hey John, how are you doing?\''
  end

  def askFirstName
    puts "What is your first name?"
    firstName = gets.chomp()
    puts "Your first name is #{firstName}"
  end

end

c = MyClass.new

#Print the loop
#c.printLoop

#Usage of escape
#c.understandingEscape

#Testing User Input
c.askFirstName

