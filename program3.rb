#Flow Control

#Using elsif
# def choose
#   puts "Do you like programming? Yes or No please."
#   choice = gets.chomp
#   if (choice.downcase == "yes")
#     puts "That\'s great!"
#   elsif (choice.downcase == "no")
#     puts "That\'s too bad!"
#   else
#     puts "That wasn\'t a Yes or No."
#   end
# end
# choose

#Switch statement
def choose
  puts "Do you like programming? Yes or No please."
  choice = gets.chomp
  case choice.downcase #value being evaluated
  when "yes" #possible value
    puts "That\'s great!"
  when "no" #possible value
    puts "That\'s too bad!"
  when "maybe" #possible value
    puts "Glad you\'re giving it a chance!"
  else #executed as a default
    puts "I have no idea what that means"
  end
end
choose
