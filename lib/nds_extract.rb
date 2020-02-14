$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  director_totals = {}
  
	#director_hash is equal to the whole director
  directors_database.each do |director_hash|
	#director_hash[:movies] is an array of hashes, movie is a hash
	
	director_sum = 0
	  director_hash[:movies].each do |movie|
		  director_sum += movie[:worldwide_gross]
	  end
	director_totals[director_hash[:name]] = director_sum
end

  return director_totals
end
