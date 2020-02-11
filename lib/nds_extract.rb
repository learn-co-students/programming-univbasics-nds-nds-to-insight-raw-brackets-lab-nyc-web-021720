$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
#   # Remember, it's always OK to pretty print what you get *in* to make sure
#   # that you know what you're starting with!
#   #
#   #
#   # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
#   result = {
#   }
  
#   #
#   # Use loops, variables and the accessing method, [], to loop through the NDS
#   # and total up all the
#   # ...
#   # ...
#   # ...
#   #
#   #
#   # Be sure to return the result at the end!
#   nil
# end
  result = {}
  row_index = 0 
  while row_index < nds.length do
    movie_index = 0 
    total_gross = 0
    while movie_index < nds[row_index][:movies].length do 
      total_gross += nds[row_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1 
      director_name = nds[row_index][:name]
      result[director_name] = total_gross
    end
    row_index += 1 
  end
  return result
end

directors_totals(directors_database)