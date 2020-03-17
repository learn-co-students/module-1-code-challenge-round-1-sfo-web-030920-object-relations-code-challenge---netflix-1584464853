class Review
  attr_accessor :movie, :viewer, :rating
  # attr_reader :rating

  @@all = []

  def self.all
    @@all
  end

  def initialize(viewer, movie, rating)
    @rating = rating
    @viewer = viewer
    @movie = movie
    save
  end

  private

  def save
    @@all << self
  end

end
