# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

# String Class

favorite_food = “tacos”
bens_favorite_food = “kale”

puts favorite_food.class
puts bens_favorite_food.class

# String Methods

puts favorite_food.upcase
puts bens_favorite_food.upcase

class Dog < Hash

    def speak
        puts "woof"
    end
  
  end
  
my_dog = Dog.new
jenkins = Dog.new
jenkins["name"] = "Jenkins"
puts jenkins.class
puts jenkins.speak
puts jenkins["name"]