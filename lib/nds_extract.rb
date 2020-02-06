$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  d_index = 0
  results = {}

  while d_index < nds.length do
    director_name = nds[d_index][:name]
    results[director_name] = 0
    movie_index = 0

    while movie_index < nds[d_index][:movies].length do
      results[director_name] += nds[d_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end

    d_index += 1
  end

  results

end

  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
