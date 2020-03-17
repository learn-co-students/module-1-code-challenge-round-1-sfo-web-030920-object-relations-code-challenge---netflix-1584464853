class Review

    @@all = []
    def initialize(movie_object, review_obj)
        @viewer = review_obj
        @movie = movie_object
        @@all << self
    end


    def review 
        Viewer.all.select{|person| person.username == self}
    end

    def movie 
        Movie.all.select{|movie| movie.title = self}
    end

end

# - `Review#viewer`
#   - returns the `Viewer` instance associated with the `Review` instance
# - `Review#movie`
#   - returns the `Movie` instance associated with the `Review` instance
