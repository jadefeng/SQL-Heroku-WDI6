require 'sinatra' 	# Need to create a Gemfile 

get '/' do
	"Hello world! It is now #{Time.now}."
end