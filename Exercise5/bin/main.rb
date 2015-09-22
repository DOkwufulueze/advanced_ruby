require_relative '../lib/csv_class.rb'
puts "Enter a CSV file name"

file_name = gets.chomp
csv_manipulator = CSVClass.new(file_name)
objects = csv_manipulator.objects_array
csv_file_class = csv_manipulator.csv_file_class
puts "Class: Name- #{csv_file_class}, Variable Name- csv_file_class\nObjects: Structure- #{objects}, Variable Name- objects\n\n:::Use the objects as you may wish to access the CSV file\n"

binding_object = binding
input = gets
code = ""

until(input.match(/^q$/i))
  if (input == "\n")
    puts eval(code, binding_object)
    code = ""
  else
    code += input
  end
  input = gets
end

