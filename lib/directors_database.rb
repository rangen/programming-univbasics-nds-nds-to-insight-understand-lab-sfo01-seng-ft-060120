require 'yaml'
require 'pp'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end

def pretty_print_nds(db)
	pp(db)
end

def print_first_directors_movie_titles(db)
	spielberg_movies = db[0][:movies]


end
