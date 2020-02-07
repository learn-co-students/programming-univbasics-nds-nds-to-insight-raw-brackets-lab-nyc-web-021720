$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
result = {}
row = 0 
  while row < directors_database.length 
    col = 0 
    total = 0 
      while col < directors_database[row][:movies].length
        total += directors_database[row][:movies][col][:worldwide_gross]
        col += 1 
      end 
  key = directors_database[row][:name]
  result["#{key}"] = total
  row += 1 
  end 

  
  return result
end
