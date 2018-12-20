class MyClass

  def printLoop
    number = 3
    number.times {puts "I love ruby"}
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

  def arrayMethods()
    a = (1..10).to_a
    p a.methods #print out the list of methods available
    p a
    p "Is this array empty? #{a.empty?}"
    puts "Length of this array is: #{a.length}"
    p "First element of this array is #{a.first}"
    p a.unshift("Vladimir") # Adds something to the front of the array
    p a << "Vladimir" #Adds something to the end of the array. Alternatively, append or push
    p a.uniq #This removes any repeating elements
    p "Is Vladimir included in the array? #{a.include?("Vladimir")}"
    p a.pop #LIFO, returns the last element as it removes it from the array
    p a.join("-") #Alternatively a.join(), a.join(",")
    p a.join("-").split("-") #Join them by "-" and then split them by "-" to create an entirely new array
    p %w(Ruby is a very interesting language) #Creates an array out of the string
    # p z = _ #grabs the last expression!
  end

  def arrayIterators()
    a = ('a'..'z').to_a
    a.each {|nameMeAnything| print nameMeAnything + " "}
    puts
    a.each {|nameMeAnything| print nameMeAnything.capitalize + " "}
    puts
    n = (1..100).to_a.shuffle
    p n.select {|number| number.even?} #Only selects and then prints out even.
  end

  def understandingHash()
    sampleHash = {'a' => 1, 'b' => 2, 'c' => 3}
    someDetails = {'name' => 'vlad', 'favcolor' => 'red'}
    p someDetails['name']
    anotherHash = {a: 1, b: 2, c: 3} #Brush on Ruby symbols. symbols can be seen as identity and are often const: think column attributes in a database
    p anotherHash
    p sampleHash
    p anotherHash[:a]
    p anotherHash.keys
    p anotherHash.values

    anotherHash.each do |key,value|
      puts "The class for key is #{key.class} and the value is #{value.class}"
    end

    sampleHash.each do |key,value|
      puts "The class for key is #{key.class} and the value is #{value.class}"
    end

    #Changing values within the hash
    anotherHash[:d] = "4"
    p anotherHash

    # sampleHash['d' => 4] There appears to be a problem with this syntax. Find out why
    # p sampleHash

    anotherHash.each { |someKey, someValue| puts "The key is #{someKey} and the value is #{someValue}"}
    p anotherHash.select {|k,v| v.is_a?(String)}
    p anotherHash.each { |k,v| anotherHash.delete(k) if v.is_a?(String)} #Deleting the key also deletes the value
  end

  def whileLoop
    while true
      puts "Press n to quit or any other key to conttinue: "
      input = gets.chomp.downcase
      break if input == "n" #Puts the break into one line. looks nice!
    end
  end


end

c = MyClass.new

#Print the loop
#c.printLoop

#Usage of escape
#c.understandingEscape

#User Input
# c.askFirstName

#if statements
# c.testIf(!true)

#Working with arrays and mutation
# array = [1,2,3,4,5,6,7,8,9]
# c.understandingMutation(array)

#Working with range and array methods
# c.understandingRange

#Working with array methods
# c.arrayMethods

#Working with array iterators
# c.arrayIterators

#Working with hash
# c.understandingHash

#Understanding the syntax for while loop
c.whileLoop
