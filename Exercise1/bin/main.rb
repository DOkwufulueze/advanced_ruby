require_relative "../lib/method_creator_caller.rb"

puts "Enter the name of your method"
method = gets.chomp
puts "Enter a one-line code of your method"
code = gets.chomp
creator = MethodCreatorCaller.new
creator.instance_eval("def #{method}; #{code}; end")
creator.send(method)

