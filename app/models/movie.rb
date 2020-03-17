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
    Viewer.all.select{|reviewed| reviewed.movie == self}
  end


end

### Movie

# - `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.
# - `Movie#reviewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.
