$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_totals(nds)
  arr = []
  i = 0 
  while i < nds.length
    names = nds[i][:name]
    movie = nds[i][:movies]
    total = 0 
    j = 0 
     while j < movie.length
total += movie[j][:worldwide_gross]
name_total = names, total
j += 1

     end
     i += 1 
  arr << name_total
    end
 arr.to_h
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