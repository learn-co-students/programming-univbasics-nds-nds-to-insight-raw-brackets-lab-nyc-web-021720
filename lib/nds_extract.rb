$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_totals(nds)
  result = {}
  outer_index = 0
  while outer_index < nds.length do
    directors_name = nds[outer_index][:name]
    result[directors_name] = 0
    nds[outer_index][:movies].length.times do |i|
      gross = nds[outer_index][:movies][i][:worldwide_gross]
      result[directors_name] += gross
    end
    outer_index += 1 
  end
  pp result
end




