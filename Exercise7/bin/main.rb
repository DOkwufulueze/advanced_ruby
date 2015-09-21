require_relative "../lib/interactive.rb"

interactive = Interactive.new
puts ":::Enter your code. Enter q to quit"
binding_object = interactive.get_binding
input = gets
code = ""

until(input.match(/^q$/i))
  if (input == "\n")
    puts interactive.evaluate(code, binding_object)
    code = ""
  else
    code += input
  end
  input = gets
end



