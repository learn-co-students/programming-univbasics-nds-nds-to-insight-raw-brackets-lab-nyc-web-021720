$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


# pp directors_database[0][:movies][0][:worldwide_gross]
# directors_database[0][:name] will give the name 
# directors_database[0][:movies][0][:worldwide_gross] will give the worldwide_gross value 

def directors_totals(nds)
  result = {} 
  directors_index = 0 
  while directors_index < nds.length do 
    directors = nds[directors_index][:name]
    result[directors] = 0 
    movie_index = 0
    totalmade = 0 
    while movie_index < nds[directors_index][:movies].length do
      directors_gross = nds[directors_index][:movies][movie_index][:worldwide_gross]
      result[directors] += directors_gross
      movie_index += 1 
    end 
    directors_index += 1 
  end 
  result
end