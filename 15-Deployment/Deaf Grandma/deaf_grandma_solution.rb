system('clear')
require 'pry'

class Granny
	def speak_up
		puts "SPEAK UP SONNY!"
	end

	def no
		puts "NO, NOT SINCE #{1930 + rand(20)}."
	end

	def bye
		puts "BYE NOW!"
	end

	def dont?
		@bye == 3
	end

	def countbye(s)
		@bye ||= 0
		if s == 'BYE'
			@bye += 1
		else
			@bye = 0
		end
	end

	def response(s)
		countbye(s)
		if done?
			bye 	# If there are 3 byes, run the bye method
		elsif s.empty? || s.upcase == s
			speak_up
		else
			no
		end
	end

	def talk
		begin 	# Conditional loop until done?
			puts response(gets.chomp)
		end until done?

end