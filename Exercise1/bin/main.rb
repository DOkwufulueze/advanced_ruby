require_relative "../lib/method_creator.rb"

puts "Enter the name of your method"
method = gets.chomp
puts "Enter a one-line code of your method"
code = gets.chomp
creator = MethodCreator.new
creator.instance_eval("def #{method}; #{code}; end")
creator.send(method)

