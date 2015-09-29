require 'faker'
	
	# tasks = ['Gardening','Walk the dog','Have Lunch','Have Breakfast']


	5.times do 
		Task.create(description: Faker::Hacker.say_something_smart)
	end
