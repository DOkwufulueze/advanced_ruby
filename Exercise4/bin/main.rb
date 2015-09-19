require_relative "../lib/my_string.rb"

puts "Enter a string to instantiate MyString class"
myString = MyString.new(gets.chomp)
puts "Enter the name of your method amongst=> (exclude?, count_characters, strip_and_toggle_case, remove_vowels)"
method = gets.chomp.gsub(/[\(\),]/, ' ').split
method_name = method.shift.to_sym
parameters_length = method.length
parameters = method.join(",")
if (myString.respond_to?(method_name))
  if (myString.method(method_name).arity == parameters_length)
    puts parameters_length > 0 ? myString.send(method_name, parameters) : myString.send(method_name)
  else
    puts ":::Wrong number of Parameters"
  end
else
  puts ":::Method #{method_name} does not exist!"
end






