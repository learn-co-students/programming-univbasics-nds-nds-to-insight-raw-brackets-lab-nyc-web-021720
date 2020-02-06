$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'

def directors_totals(nds)
  pp nds
  row_index = 0
  result = {}
  while row_index < nds.count do
    total = 0 
    director_name = nds[row_index][:name]
    column_index = 0 
    while column_index < nds[row_index][:movies].count do 
      total += nds[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1 
    end 
    result[director_name] = total 
    row_index += 1 
  end
   result
end
