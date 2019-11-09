$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'



nds = directors_database
pp nds[0] = #:name :movies => :title : studio :worldwide gross: releaseyear



def directors_totals(nds)
  name_index = 0
total = {}

while name_index < nds.length do
  directors_name = nds[name_index][:name]
  total[directors_name] = 0
  movie_index = 0
  while movie_index < nds[name_index][:movies].length do

    total[directors_name] += nds[name_index][:movies][movie_index][:worldwide_gross]
    movie_index += 1
end
name_index += 1
end

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
  nil
return total
end
