require 'pry'

class Allergies

	ALLERGENS = { 	# In capitals because constant. Can also flip around by ALLERGENS.invert
		1 => 'eggs',
		2 => 'peanuts',
		4 => 'shellfish',
		8 => 'strawberries',
		16 => 'tomatoes',
		32 => 'chocolate',
		64 => 'pollen',
		128 => 'cats'

	}

	def initialize(flags)
		@flags = flags
	end

	def allergic_to?(allergen) 			# Predicate methods only returns true or false
		list.include? allergen
	end

	def list
		allergies = []
		ALLERGENS.each do |code, allergen|
			if (@flags & code ) > 0
				allergies << allergen
			end
		end
		allergies
	end
end


### TESTING ###
allergies = Allergies.new(34)
allergies.allergic_to?('chocolate') 	# => true
allergies.allergic_to?('cats') 			# => false
allergies.list							# => ['peanuts', 'chocolate']