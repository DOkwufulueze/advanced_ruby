class ShoppingList
  def initialize
    @hash = Hash.new(0)
  end

  def items(&block)
    if block_given?
      instance_eval(&block)
    end

    showList
  end

  def add(*args)
    item = args[0]
    quantity = args[1]
    @hash[item] += quantity
  end

  def showList
    if @hash.size > 0
      puts "Shopping List\nItem\t\t\t Quantity\n"
      @hash.each do |key, value|
        puts "#{key}\t\t\t#{value}"
      end
    else
      puts ":::Shopping List is empty"
    end
    
  end
end


