class MyString < String
  def exclude?(pattern)
    !(include? pattern)
  end

  def count_characters
    gsub!(" ","").length
  end

  def strip_and_toggle_case
    gsub!(" ","").swapcase!
  end

  def remove_vowels
    gsub!(/[aeiou]+/,"")
  end
end




