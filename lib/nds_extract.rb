$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

  new_hash = {}
  index = 0

  while nds[index] do
    sum = 0
    number_of_movies = 0
    while nds[index][:movies][number_of_movies] do
      sum += nds[index][:movies][number_of_movies][:worldwide_gross]
      number_of_movies += 1
    end
    new_hash[nds[index][:name]] = sum
    index += 1
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
  return new_hash
end
