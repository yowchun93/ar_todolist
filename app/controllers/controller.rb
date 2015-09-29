
require 'byebug'

class Controller
	def self.list
		tasks = Task.all
		tasks.each_with_index do |task,index|
			puts "#{index}: #{task.description}"
		end	
	end

	def self.add(stuff)
		puts "Added task"
		Task.create(description: stuff)
	end

	def self.delete(stuff)
		task = Task.find(stuff)
		task.delete
	end

	def self.update(stuff)
		task = Task.find(stuff)
		task.description = task.description + "[X] Done"
		task.save
	end
end