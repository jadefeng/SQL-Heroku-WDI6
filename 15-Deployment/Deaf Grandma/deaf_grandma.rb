# Write a Deaf Grandma program.

# Whatever you say to grandma (whatever you type in), she should respond with

# HUH?! SPEAK UP, SONNY!
# unless you shout it (type in all capitals).

# If you shout, she can hear you (or at least she thinks so) and yells back

# NO, NOT SINCE 1938!
# To make your program really believable, have grandma shout a different year each time; maybe any year at random between 1930 and 1950.

# You can't stop talking to grandma until you shout BYE.

# What if grandma doesn't want you to leave? When you shout BYE, she could pretend not to hear you. Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout BYE three times, but not in a row, you should still be talking to grandma.

# Have grandma tell you a story. Load the story from a .yml file. Grandma will only tell you one line of the story at a time, and to hear the next story you have to tell her "AND THEN".


system('clear')
answer_list = []
answer = []
n = 1

until answer_list[-1] == "BYE" && answer_list[-2] == "BYE" && answer_list[-3] == "BYE"
	puts "What do you want to say to Grandma?"
	answer = gets.chomp
	answer_list << answer
		if answer_list[-1] == "BYE" && answer_list[-2] == "BYE" && answer_list[-3] == "BYE"
			puts "GOODBYE DARLING!"
		elsif answer == "BYE"
			puts "Grandma loves you."
		elsif answer == "TELL ME A STORY"
			lines = IO.readlines('story.yml')
			puts lines[1] 			# Prints out the story
			n = 2
		elsif answer == "AND THEN" && n > 1
			lines = IO.readlines('story.yml')
			puts lines[n] 			# Prints out the story
			n +=1
		elsif answer.upcase == answer
			puts "NO, NOT SINCE #{ (1930..1950).to_a.sample }!"
		else
			puts "HUH?! SPEAK UP, SONNY!"
		end
end

