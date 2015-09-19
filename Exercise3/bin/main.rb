require_relative "../lib/string.rb"

name = "Daniel"
other_name = "Emeka"

def name.greet
  puts "#{self} says Hello!!!"
end

class << name
  def greet_again
    puts "#{self} says Hi!!!"
  end
end

name.greet
name.greet_again
other_name.greet
other_name.greet_again



