$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  nds = directors_database
  result = { }
  first_index = 0 #Used to loop thru directors
  number_of_directors = nds.length
  while number_of_directors > first_index do
    #:name :movies
    number_of_movies = nds[first_index][:movies].length
    second_index = 0 #used to loop thru directors movies
    total_gross = 0
    while number_of_movies > second_index do
      #totals the current directors gross
      total_gross += nds[first_index][:movies][second_index][:worldwide_gross]
      second_index += 1
    end
    director_name = nds[first_index][:name]
    result[director_name] = total_gross #adds the current director and their total gross to the result hash.
    first_index += 1
  end
  result
end
