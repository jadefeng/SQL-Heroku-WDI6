# When do you initialize?

system("clear")
require 'pry'

class Teacher # Using class to avoid repeating yourself when you're creating a new teacher 
	attr_accessor :class, :students, :truants

	def initializer
		@class = 25
		@students = students
		@truants = truants
	end

end
binding.pry
# You can put the binding.pry in looooots of different places! Whereever you want!

tarun = Teacher.new
joel = Teacher.new

# If each Teacher will have the same properties, it will automatically update with those details

binding.pry
# You can put the binding.pry in looooots of different places! Whereever you want!