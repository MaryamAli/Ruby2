#Loops

# 3.times do
#   puts "hello!"
# end

number = 0
# while (number <= 10) do # while true do this
(0..10).each do |n|
  p "the number is now #{n}" #what's in this code block
  number += 1 #shortform of 'number = number + 1'
end


