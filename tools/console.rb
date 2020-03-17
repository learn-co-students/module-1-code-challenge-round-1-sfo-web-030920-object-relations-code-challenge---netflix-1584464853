# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

new_movie = Movie.new("Lotr")
new_viewer = Viewer.new("Mark")
new_review = Review.new(new_viewer, new_movie, 4)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0


