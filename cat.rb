#OOP 1

class Cat
  # the : refers to symbols (hash keys)
  attr_reader :color, :breed, :name
  #can change attr_writer outside of kitty object
  attr_writer :name
  
  def initialize(color, breed)
    # @ = instance variables, not local variables
    #will be avail to other methods inside of class Cat
    #local variables (w/o @) only exisit inside the method they are in
    @color = color
    @breed = breed
    @hungry = true
  end

  #feed method takes type of food as parameter
  #sets not hungry after being feed
  def feed(food)
    puts "Mmmm, " + food + "!"
    @hungry = false
  end

  #method to see if cat is hungry
  def hungry?
    if @hungry
      puts "I'm hungry!"
    else
      puts "I'm full :)"
    end
    @hungry
  end

  #method to speak
  def speak
    puts "Meow!"
  end

end


kitty = Cat.new("grey", "Persian")
puts "Let's inspect our new cat:"
puts kitty.inspect
puts "What class does our new cat belong to?"
puts kitty.class
puts "Is our new cat an object?"
puts kitty.is_a?(Object)
puts "What color is our cat?"
puts kitty.color
puts "Let's give our new cat a name"
kitty.name = "Betsy"
puts kitty.name

puts "Is the #{kitty.color} #{kitty.breed} hungry now?"
kitty.hungry?
puts "Lets feed #{kitty.name} the cat."
kitty.feed("tuna")
puts "Is #{kitty.name} hungry now?"
kitty.hungry?

puts "#{kitty.name} can make some noise"
kitty.speak