$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'



def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  

pp directors_database

directors_totals = {}
index = 0 
while index < nds.length do
  movies =  nds[index][:movies]
   directors_name = nds[index][:name]
  index_number = 0
total_number = 0
while index_number < movies.length do 
total_number +=  movies[index_number][:worldwide_gross]
 
index_number += 1 

end
 index +=1
 
 directors_totals[directors_name] = total_number 
 
 
 
end 
    directors_totals

 
 
 

  
  
  
  
  
  
  
end
