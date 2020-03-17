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

  def reviews
    Review.all.select{|review| review.movie == self}
  end

  def reviewers
    review_ins_by_movie = Review.all.select{|review| review.movie == self}
    review_ins_by_movie.collect{|review| review.viewer}
  end

  def average_rating
    review_ins_by_movie = Review.all.select{|review| review.movie == self}
    ratings = review_ins_by_movie.collect{|review| review.rating}
    ratings.reduce(:+) / (ratings.length)

  end
end