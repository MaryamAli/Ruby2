# Array methods

def fav_foods
  #instead of brackets, can use Array.new to make a new empty array
  food_array = []
  3.times do 
    puts "Name a favorite food."
    food_array << gets.chomp
    #each method (see below)
    food_array.each {|food| puts "I like #{food} too!"}
  end
  p food_array
  puts "Your fav food are #{food_array.join(", ")}."
end
fav_foods

#SLICE Method
food_array = ["sweet", "carrots", "potatoes", "grated", "watermelon"]
food_array[0] + food_array[2] 
#=>"sweetpotatoes"
food_array[-4, 3] 
#=>["carrots", "potatoes", "grated"]

#MAP Method
food_array.map!{|food| food.capitalize}
#bang operator mutates the orginial elements
#=>["Sweet", "Carrots", "Potatoes", "Grated", "Watermelon"]
food_array.map!{|food| food.downcase}
#=>["sweet", "carrots", "potatoes", "grated", "watermelon"]






#Notes
# Each Method

#do something to each element in food_array
#'food' refers to the element, can be named anything, temp variable
# food_array.each do |food|
#   puts "I like #{food} too!" #thing we are doing to elements
# end

#can also be written as:
#food_array.each {|food| puts "I like #{food} too!"}


#Hashes

# my_hash = {"name" => "Annie", "password" => "take my money", "coins" => 5, "fav foods" => ["apples", "chocolate", "mint"]}

# my_hash["name"]
# returns "Annie"

# use SYMBOLS as hash keys; b/c cannot modify a symbol 
# my_hash = {:name => "Annie", :coins => 5, :fav_foods => ["apples", "candy", "water"]}

# can also be written as such: 
# my_hash = {name: "annie", coins: 5, fav_foods: ["chocolate", "oranges", "gum"]}

# my_hash[:fav_foods][0]
# returns "chocolate"

