$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  
    result = {}
    director_index = 0
		while director_index < nds.size do
			gross_index = 0
      gross = 0
      while gross_index < nds[director_index][:movies].size do
        gross += nds[director_index][:movies][gross_index][:worldwide_gross]
        gross_index += 1
			end
      result.store(nds[director_index][:name], gross)
			director_index += 1
		end
		return result
	 
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
end
