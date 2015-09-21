require_relative "../lib/calculator.rb"

puts ":::Enter your arithmetic expression"
calculator = Calculator.new
puts calculator.evaluate(gets.chomp)

