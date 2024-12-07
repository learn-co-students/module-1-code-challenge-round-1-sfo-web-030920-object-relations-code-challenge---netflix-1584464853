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

  def reviews(username)
    review = @@all.map { |s| s.username == username }
    review.rating
  end

  def reviewed_movies(username)
    review = @@all.map { |s| s.username == username }
    review.movie
  end

  def rate_movie(movie, rating)s

  end

  def reviewed_movie?(movie)
    Review.all.select do |s|
        if  s.viewer == self && s.movie == movie
          true
        else
          false
        end
    end
  end

end


#########################################################################


# - `Viewer#reviewed_movie?(movie)`---------------
#   - a `Movie` instance is the only argument
#   - returns `true` if the `Viewer` has reviewed this `Movie` 
#   (if there is a `Review` instance that has this `Viewer` and `Movie`), 
#   returns `false` otherwise


#########################################################################






# - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated,
#    this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the 
#   existing `Review` instance
