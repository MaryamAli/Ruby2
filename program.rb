puts "hello"
p "hello"

my_name= "Annie"

def greeting # def defines a method, then put the name of the method
  p "hello" #this is the code inside the method
end # close the method (same indentation as def)
greeting

def greeting(name)
  p "hello" + " " + name
end
greeting("Tim")

greeting(my_name)

def greeting
  puts "Please enter your name:"
  name = gets.chomp
  puts "Hello" + " " + name
end
greeting
