
class CreateTask < ActiveRecord::Migration

	def change
		create_table :tasks do |t|
		  t.string :description
		end
	end 

end