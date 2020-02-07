$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"

def directors_totals(nds)
  result = {}

  name_index = 0
    while name_index < nds.length do

      director_name = nds[name_index][:name]
      result[director_name] = 0 # accessing via key value pair. matched it with resuult and set variable in [] to equal 0 (for now)
      movies_array = nds[name_index][:movies]

      movie_index = 0
      while  movie_index < movies_array.length do
        result[director_name] += movies_array[movie_index][:worldwide_gross]
        movie_index += 1
      end

      name_index += 1
    end

    result
  end


    # movie_index = 0
    # s_movies = nds[name_index][:movies]
    # while movie_index < s_movies.count {
    #
    # }
    # end





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
