class Interactive
  def get_binding
    binding
  end

  def evaluate(expression, binding_object)
    expression.gsub!(/\d+(\.\d+)?/) { |matched| matched.to_f }
    eval(expression, binding_object)
  end
end


