$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry' 

def pretty_print_nds(nds)
  pp nds 
  nil
end 
pretty_print_nds(directors_database)

def directors_totals(nds)
  hash = {}
  
  row_index = 0 
while row_index < nds.length do
  current_director = nds[row_index][:name]
  hash[current_director] = gross_for_director(nds[row_index])
  row_index += 1
end 
hash 
end 

def gross_for_director(director_data)
  movie_index = 0 
  movies = director_data[:movies]
  total_gross_for_director = 0 
  
  while movie_index < movies.length do 
    total_gross_for_director += movies[movie_index][:worldwide_gross]
    movie_index += 1 
  end 
total_gross_for_director
end 

  # result = {
#   }
  
    # iterate and add totals
  # ...
  # return the hash
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
