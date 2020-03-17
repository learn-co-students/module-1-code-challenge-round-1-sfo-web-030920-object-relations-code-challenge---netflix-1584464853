class Review

    attr_accessor :rating, :movie
    @@all = []
    def initialize(movie_object, review_obj)
        @review = review_obj
        @movie = movie_object
        @rating = 0
        @@all << self
    end


    def review 
        Viewer.all.select{|person| person.username == self}
    end

    def movie 
        Movie.all.select{|movie| movie.title = self}
    end

    def self.all
        @@all
    end

end

# - `Review#viewer`
#   - returns the `Viewer` instance associated with the `Review` instance
# - `Review#movie`
#   - returns the `Movie` instance associated with the `Review` instance
