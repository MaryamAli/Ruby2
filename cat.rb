#OOP 1 & 2

class Pet
  # the : refers to symbols (hash keys)
  attr_reader :color, :breed, :name, :nickname, :nickname2
  #can change attr_writer outside of animal object
  attr_writer :name, :nickname, :nickname2
  
  def initialize(color, breed)
    # initialize method runs when new instance of a class is created
        #this one expects 2 arguments: color & breed
        #every new Pet must have these
        
    # @ = instance variables, not local variables
    #will be avail to other methods inside of class Pet
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

  #method to see if pet is hungry
  def hungry?
    if @hungry
      puts "I'm hungry!"
    else
      puts "I'm full :)"
    end
    @hungry
  end
end


class Cat < Pet #class Cat inherits from class Pet
  
  #method to speak
  def speak
    puts "Meow!"
  end
end

class Dog < Pet
  def speak
    puts "Much Woof!"
  end
  def emojiDog
    puts "∪･ω･∪"
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

puts #adding blank lines b/w Cat and Dog
puts

puppy = Dog.new("tan", "Shiba Inu")
puppy.speak
puts puppy.emojiDog
puts "Hi, this is a #{puppy.color} #{puppy.breed}."
puts "Let's name our doggo."
puppy.name = "Such Amaze Much Wow"
puts puppy.name
puts "Is #{puppy.name} a bit peckish?"
puppy.hungry?
puppy.speak
puts "Let's give #{puppy.name} a snack."
puppy.feed("Milk Bone")
puts "Does doggo want a bit more?"
puppy.hungry?
puts "I think #{puppy.name} needs a nickname."
puppy.nickname = "Such Doggo"
puts "How about #{puppy.nickname}?"
puts "No? Please input another nickname:"
puppy.nickname2 = gets.chomp
puts "Ok, doggo\'s new nickname is #{puppy.nickname2}."



