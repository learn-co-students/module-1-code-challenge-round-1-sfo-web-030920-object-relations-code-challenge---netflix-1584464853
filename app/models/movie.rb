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

  def reviews(title)
    check_r = @@all.map { |s| s.title == title }
    check_r.rating
  end

  def reviewers(title)
    check_r = @@all.map { |s| s.title == title }
    check_r.username
  end

  def average_rating(title)

  end

end

#################################################################

# - `Movie.highest_rated`-----------------
#   - returns the `Movie` instance with the highest average rating.

#################################################################



# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.