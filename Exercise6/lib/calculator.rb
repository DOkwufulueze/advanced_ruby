class Calculator
  def evaluate(expression)
    expression.gsub!(/\d+(\.\d+)?/) { |matched| matched.to_f }

    begin
      instance_eval(expression)
    rescue Exception => e
      ":::Invalid Expression"
    end
  end
end

