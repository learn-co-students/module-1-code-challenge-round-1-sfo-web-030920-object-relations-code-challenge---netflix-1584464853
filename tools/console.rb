# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

mulan = Movie.new("mulan")
cinderella = Movie.new("cinderella")
tangled = Movie.new("tangled")


bob = Viewer.new("bob")
review1 = Review.new(bob, mulan, 5)
review2 = Review.new(bob, cinderella, 4)
review3 = Review.new(bob, tangled, 5)

anna = Viewer.new("anna")
anna_review1 = Review.new(anna, mulan, 2)

lisa = Viewer.new("lisa")
lisa_review1 = Review.new(lisa, mulan, 3)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
