$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"

def directors_totals(nds)
  result = {}
  name_index = 0

  while name_index < nds.length do
    # binding.pry
    director_name = nds[name_index][:name]
    result [director_name]
    binding.pry
    nds[name_index]
    name_index += 1
  end
    movie_index = 0 


    movie_index = 0
    s_movies = nds[name_index][:movies]
    while movie_index < s_movies.count {

    }
    end


  # total += nds[name_index][:movies][movie_index][:worldwide_gross].sum
  # movie_index = 0
  s_movies = nds[0][:movies]
  movie_index = 0

  while movie_index < s_movies.count {
    nds[0][:movies][movie_index][:worldwide_gross]
  }
  movie_index += 1
  end
  total


  # nds[0][:movies][0, movie_count][:worldwide_gross]

  # binding.pry

  # while name_index < nds.length {
  #   << {name_index: }
  # }
  #
  #
  # while nds[name_index][:movies]
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!

end
# nds.length = 9

# nds[0][:movies][0][:worldwide_gross] just 1 movie
# loop the nds[name_index][:movies][movie_index][:worldwide_gross]
# nds[0] => 1st director + all details
