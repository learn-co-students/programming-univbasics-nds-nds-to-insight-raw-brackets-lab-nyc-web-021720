$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

#
def directors_totals(nds)
  directors = directors_database
  
  result = {}
  
  directors.each do |director|
    result[director[:name]] = totalForDirector(director)
  end

  return result
end

#
def totalForDirector(director)
  movies = director[:movies]
  total = 0
  movies.each do |movie|
    total += movie[:worldwide_gross]
  end
  return total
end

pp directors_database
