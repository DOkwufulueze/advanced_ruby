require 'csv'
class CSVClass

  def initialize(file_name)
    file_path = File.expand_path("../#{file_name}", __FILE__)
    if file_name == ""
      raise ":::Please specify a file name"
    elsif !File.exist?(file_path)
      raise ":::The file #{file_name} does not exist"
    else
      @method_names_array = []
      @class_name = file_name.gsub('.csv', '').capitalize
      @row_objects_array = CSV.read("#{file_path}", headers: true)
      @csv_file_class = create_class
      extract_method_names
      create_methods
    end   
  end

  def create_class
    Object.const_set(@class_name, Class.new)
  end

  def extract_method_names
    @row_objects_array[0].each do |key, value|
      @method_names_array << key
    end
  end


  def create_methods 
    puts "\nclass #{@class_name}"
    @method_names_array.each do  |method| 
      @csv_file_class.class_eval("def #{method}; end")
      puts "\n\tdef #{method}\n\n\tend\n\n"
    end
    puts "end\n"
  end
end

