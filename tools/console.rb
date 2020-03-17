# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
#
#
movie1 = Movie.new('Avenger 1')
movie2 = Movie.new('Titanic')
movie3 = Movie.new('Scream')
movie4 = Movie.new('Titanic II the revenge')

user1 = Viewer.new('Eduardo')
user2 = Viewer.new('Alexia')

review1 = Review.new(user1, movie1, 4.5)
review3 = Review.new(user1, movie3, 3)
review4 = Review.new(user1, movie4, 2.0)
review2 = Review.new(user2, movie2, 4.9)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
