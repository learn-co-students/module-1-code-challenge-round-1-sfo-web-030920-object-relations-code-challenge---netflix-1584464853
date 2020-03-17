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

end

# - `Viewer#reviewed_movies`
#   - returns an array of `Movie` instances reviewed by the `Viewer` instance.
