require_relative 'config/application'
require_relative 'app/models/list'
require_relative 'app/models/task'

# puts "Put your application code in #{File.expand_path(__FILE__)}"

# list = List.new
# list = ARGV
args = ARGV

case args[0]
when "list" then List.list
when "delete" then List.delete(args[1])
  List.list
when "complete" then List.complete(args[1])
  List.list
when "add" then 
  args.shift
  sentence = args.join("")
  List.add(sentence)
  List.list
end


# when "add" then List.add(Task.new(ARGV[1]))