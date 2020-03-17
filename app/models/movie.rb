class Movie
  attr_accessor :title, :viewer, :review

  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    save
  end

  def reviews
    Review.all.select { |review| review if review.movie == self }
  end

  def reviewers
    Review.all.select { |review| review.viewer if review.movie == self }
  end

  private

  def save
    self.class.all << self
  end
end
