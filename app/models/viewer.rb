class Viewer
  attr_accessor :username, :movie

  @@all = []

  def self.all
    @@all
  end

  def initialize(username)
    @username = username
    save
  end

  def reviews
    Review.all.select { |review| review.viewer == self }
  end

  def reviewed_movies
    Review.all.select { |review| review.movie.title if review.viewer == self }
  end

  def reviewed_movie?(movie)
     movie.reviewers.each do |viewer|
       if viewer.viewer == self
         return true
       end
     end
     false
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      movie
    end
  end

  private

  def save
    self.class.all << self
  end

end
