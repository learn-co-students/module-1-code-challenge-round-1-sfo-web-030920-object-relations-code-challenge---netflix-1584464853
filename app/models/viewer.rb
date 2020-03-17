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

  def rate_movie(movie, rating)

  end



end

# - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated,
#    this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the 
#   existing `Review` instance
