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
    Review.all.select{|review| review.viewer == self}
  end
  
  def reviewed_movies
    review_ins_by_movie = Review.all.select{|review| review.viewer == self}
    review_ins_by_movie.collect{|review| review.movie}
  end

  def rate_movie(movie_obj, rating)
    if !reviewed_movies
  end
end

# - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance