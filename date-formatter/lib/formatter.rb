class String

  def formatter
    if self[-2] == "0"
      return "April " + "#{self[-1]}" + " 2015"
    else
      return "April " + "#{self[-2..-1]}" + " 2015"
    end
  end

end