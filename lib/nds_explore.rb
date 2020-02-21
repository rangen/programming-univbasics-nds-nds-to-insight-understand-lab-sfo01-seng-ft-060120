$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  pp nds
  nil
end

def print_first_directors_movie_titles
  	spielberg_movies = directors_database[0][:movies]
  	movieList = []
  	index = 0

  	while index < spielberg_movies.length do
  		movieList << spielberg_movies[index][:title]
  		index += 1
  	end
  	return movieList.join("\n")
end
  
