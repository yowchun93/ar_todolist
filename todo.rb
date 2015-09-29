require_relative 'config/application'
require_relative 'app/controllers/controller'

byebug
#Parsing the command line data
command = ARGV[0]
stuff= ARGV[1..-1]


# command = "" if command.nil?
# stuff = [] if description.nil?

stuff = stuff.join(" ")

# HELP_FILE = "Commands available : ADD / DELETE / LIST / COMPLETE / HELP \n eg. ADD I want to learn ruby in year 2015!! \n You can complete/delete a ToDo by specifying the id number of the ToDo. \n You can obtain the id via LIST command. \n eg. DELETE 1 \n This will delete the ToDo in id 1\n COMPLETE 1\n This will change ToDo in id 1 to completed"

begin
  case command
   when 'list'
   	Controller.list
   when 'add'
   	Controller.add(stuff)
   when 'update'
   	Controller.update(stuff)
   when 'delete'
   	Controller.delete(stuff)
   	else puts "no such command stop trolling"
  end

end



