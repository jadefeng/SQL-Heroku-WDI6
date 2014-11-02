# An allergy test produces a single numeric score which contains the information about all the allergies the person has (that they were tested for).

# The list of items (and their value) that were tested are:

# eggs (1)
# peanuts (2)
# shellfish (4)
# strawberries (8)
# tomatoes (16)
# chocolate (32)
# pollen (64)
# cats (128)
# So if Tom is allergic to peanuts and chocolate, he gets a score of 34.

# Write a program that, given a person's score can tell them

# a) whether or not they're allergic to a given item, and b) the full list of allergies.

require 'pry'

class Allergies
	attr_accessor :score

	def initialize(score)
		@score = score.to_i
	end

	def score
		puts @score
	end

	ALLERGY_ITEMS = {
		'eggs' => 1,
		'peanuts' => 2,
		'shellfish' => 4,
		'strawberries' => 8,
		'tomatoes' => 16,
		'chocolate' => 32,
		'pollen' => 64,
		'cats' => 128
	}
	
	@score_value = @score.to_i
	@allergy_list = []

	def allergic_to?(item)
		if @score_value.to_i < ALLERGY_ITEMS[item].to_i
			puts "False - you are not allergic to #{item}"

		else
			puts "True - you are allergic to #{item}"
			@allergy_list << item
			@score_value.to_i -= ALLERGY_ITEMS[item].to_i
		end
	end


	def list
		puts "You are allergic to #{@allergy_list}."
	end
end

allergies = Allergies.new(34)
allergies.allergic_to?('chocolate')


binding.pry

allergies.allergic_to?('chocolate')
# => true
allergies.allergic_to?('cats')
# => false
allergies.list
# => ['peanuts', 'chocolate']