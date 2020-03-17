class Review

    attr_accessor :rating, :movie, :reviewer
    @@all = []
    def initialize(movie_object, review_obj)
        @reviewer = review_obj
        @movie = movie_object
        @rating = 0
        @@all << self
    end


    def review 
        Viewer.all.select{|person| person.username}
    end

    def movie 
        Movie.all.select{|movie| movie.title}
    end

    def self.all
        @@all
    end

end

# - `Review#viewer`
#   - returns the `Viewer` instance associated with the `Review` instance
# - `Review#movie`
#   - returns the `Movie` instance associated with the `Review` instance
