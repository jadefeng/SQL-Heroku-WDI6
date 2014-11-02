require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDERR)

ActiveRecord::Base.establish_connection(
	:adapter => 'sqlite3',
	:database => 'college.db'
)

require_relative 'student' 			# This links back to the student.rb page with the class Student
require_relative 'course'
binding.pry