require_relative "../lib/calculator.rb"

include Calculator
puts ":::Enter your arithmetic expression"
puts Calculator.evaluate(gets.chomp)

