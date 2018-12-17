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
    firstName = gets.chomp
    puts "Your first name is #{firstName}"
  end

  def testIf(condition)
    if condition
      puts "execute"
      puts "multiline"
    else
      puts "execute one line"
    end
  end

  def understandingMutation(array)
    p array
    p array.reverse
    p array
    array.reverse!
    p array
  end

  def understandingRange()
    x = 1..100
    p x
    y = x.to_a
    p y
    p y.reverse
    p y.shuffle
    p (1..10).to_a.reverse.shuffle
  end


end

c = MyClass.new

#Print the loop
#c.printLoop

#Usage of escape
#c.understandingEscape

#User Input
#c.askFirstName

#if statements
# c.testIf(!true)

#Working with arrays and mutation
# array = [1,2,3,4,5,6,7,8,9]
# c.understandingMutation(array)

#Working with range and array methods
# c.understandingRange