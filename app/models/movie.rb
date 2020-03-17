class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def review
    Review.all.select{|movie| movie.movie == self}
  end

  def reviewers
    Review.all.find{|reviewed| reviewed.movie == self}
  end

  def average_rating
    rate = 0
    count = Review.all.select{|rates| rate += rates.rating}
    return (rate / count.length)
  end
  #we will cover this in part 2
  # def highest_rated

  # end
end

### Movie


# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.
# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.
# - `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.
# - `Movie#reviewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.
