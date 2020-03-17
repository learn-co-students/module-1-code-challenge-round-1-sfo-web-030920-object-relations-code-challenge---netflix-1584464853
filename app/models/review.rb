class Review
    attr_reader :viewer, :movie, :rating

    @@all = []

    def initialize(viewer_obj, movie_obj, rating)
        @viewer = viewer_obj
        @movie = movie_obj
        @rating = rating
        self.class.all << self
    end

    def self.all
        @@all
    end

end

