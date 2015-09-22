require 'csv'
class CSVClass
  attr_accessor :objects_array, :csv_file_class

  def initialize(file_name)
    @file_path = File.expand_path("../#{file_name}", __FILE__)
    if file_name == ""
      raise ":::Please specify a file name"
    elsif !File.exist?(@file_path)
      raise ":::The file #{file_name} does not exist"
    else
      manipulate_csv_file(file_name)
    end   
  end

  def manipulate_csv_file(file_name)
    @method_names_array = []
    @objects_array = []
    @class_name = file_name.gsub('.csv', '').capitalize
    @file_content = CSV.read("#{@file_path}", headers: true)
    @csv_file_class = create_class
    create_objects
  end

  def create_class
    Object.const_set(@class_name, Class.new)
  end

  def create_objects
    @file_content.each do |item|
      if item.length > 0
        object = @csv_file_class.new
        object.instance_eval ("def item; puts '#{item}'; end")
        item.each do |key, value|
          object.instance_eval ("def #{key}; puts '#{value}'; end")
        end

        @objects_array << object
      end
    end

    @objects_array
  end
end

