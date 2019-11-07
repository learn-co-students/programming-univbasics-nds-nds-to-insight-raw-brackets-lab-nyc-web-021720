$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'



nds = directors_database
pp nds[0] = #:name :movies => :title : studio :worldwide gross: releaseyear



def directors_totals(nds)
news = {}
index = 0


while nds[index] do
  sum = 0
  movie_num = 0
while nds[index][:movies][movie_num] do

  sum += nds[index][:movies][movie_num][:worldwide_gross]
  movie_num += 1
end

news[nds[index][:name]] = sum
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
return news
end
