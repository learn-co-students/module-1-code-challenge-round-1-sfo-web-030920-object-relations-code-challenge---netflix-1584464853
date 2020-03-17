class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def reviews
    Review.all.select{|reviews| reviews.reviewer}
  end

  def reviewed_movies
    Review.all.select{|reviews| review.movie}
  end

  # This is in part 2
  # def reviewed_movie?(movie_obj)
  #   if reviewed_movies == movie_obj
  #       return true
  #   else
  #       return false
  #   end

    def rate_movie(movie, rating)
      if reviewed_movies
        newrating = reviewed_movies
        puts "They in here"
      else
        rated = Review.new(movie, rating)
        rated
        puts "why not here"
        #newrating.rating = rating
      end
    end

  end
  #### Viewer


#   - `Viewer#reviewed_movie?(movie)`
#   - a `Movie` instance is the only argument
#   - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise
# - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance

# - `Viewer#reviews`
# - returns an array of `Review` instances associated with the `Viewer` instance.
# - `Viewer#reviewed_movies`
# - returns an array of `Movie` instances reviewed by the `Viewer` instance.
