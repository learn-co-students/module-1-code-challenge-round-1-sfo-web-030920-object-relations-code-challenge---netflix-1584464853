


class Review

    attr_accessor :viewer, :movie, :rating

    @@all = []
    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def viewer(rating)
        var = @@all.select{ |s| s.rating == rating }
        var.viewer
    end

    def movie(rating)
        var = @@all.select{ |s| s.rating == rating }
        var.movie
    end
end

#### Review

# - `Review#viewer`
#   - returns the `Viewer` instance associated with the
#    `Review` instance
# - `Review#movie`
#   - returns the `Movie` instance associated with the 
#   `Review` instance



