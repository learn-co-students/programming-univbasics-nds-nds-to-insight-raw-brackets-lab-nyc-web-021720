$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
print directors_database
def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
nds.each do |director_data|
 movies_sum = 0
 director_data[:movies].each do |movie|
   movies_sum += movie[:worldwide_gross]
 end

  result[director_data[:name]] = movies_sum
end

result
end
