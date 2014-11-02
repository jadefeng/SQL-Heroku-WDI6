class Teenager
	attr_accessor :name

	def initialize(name)
		puts "My name is #{name}. How you going dude?"
		@name = name
	end

	def converse
		message = gets.chomp.strip
		if question?(message)
			puts "Sure."

		elsif rude?(message)
			puts "Fine, be that way."

		elsif all_caps?(message)
			puts "Woah chill out dude!"

		elsif leet_request?(message)
			puts leet(message)

		else
			puts "Whatever"
		end
	end

	def question(m)
		m.end_with? '?'
	end

	def all_caps(m)
		(m.upcase == m ) && (! m.empty?)
	end

	def rude(m)
		m.empty? 	# Need empty, not nil. A string will still be there. 
	end

	def leet_request(m)
		m[0..4] == 'Bro,'
	end

	def leet(m)
		m.sub!('Bro, ','')
		m.tr('aeio', '4310')
	end

end

bob = Teenager.new("Bob")

loop do 
	bob.converse
end