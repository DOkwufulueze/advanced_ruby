require_relative '../lib/csv_class.rb'
puts "Enter a CSV file name"

file_name = gets.chomp
CSVClass.new(file_name)

