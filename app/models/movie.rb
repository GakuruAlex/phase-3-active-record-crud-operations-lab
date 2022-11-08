class Movie < ActiveRecord::Base


def self.create_with_title(title)
self.create(title: title)
end

#returns the first item in the movies table
def self.first_movie
    self.first
end

#returns the last item in the movies table
def self.last_movie
    self.last
end
#returns the number of items in the movies table
def self.movie_count
    self.count
end
#returns  item in the movies table based on given id
def self.find_movie_with_id (id)
    find(id)
end
#returns the movie with the corresponding attributes
def self.find_movie_with_attributes (params)
    find_by(params)
end
#returns a list of movies released after 2002
def self.find_movies_after_2002
    self.where("release_date > ?", 2002  )
end
#update_with_attributes updates one movie
def update_with_attributes (args)
    self.update(args)
end
#update_all_titles updates the title of all the movies
def self.update_all_titles (args)
    self.update(title:args)
end
#delete_by_id deletes the record with the corresponding id
def self.delete_by_id(id)
    self.delete(id)
end
#deletes all the movies from the movies table
def self.delete_all_movies
    self.destroy_all
end

end