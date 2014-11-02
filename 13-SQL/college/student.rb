class Student < ActiveRecord::Base ##Inherits from ActiveRecord
	has_and_belongs_to_many :courses
end