
loop do
	puts "What do you want to say to Bob?"
	answer = gets.chomp

	if 	answer.length < 1 || answer == " "
		puts "Fine. Be that way!"
	elsif answer.upcase == answer
		puts "Woah, chill out!"
	elsif answer[-1] == '?'
		puts "Sure."
	elsif answer[0..2].upcase == "BRO"
		puts answer.tr("aeio", "4310").gsub! /(?!^)..?/, &:capitalize
	else 
		puts "Whatever"
	end

end
