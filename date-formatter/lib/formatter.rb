class String

  def formatter
    if self[-2] == "0"
      return "April " + "#{self[-1]}" + " #{self[0,4]}"
    else
      return "April " + "#{self[-2..-1]}" + " #{self[0,4]}"
    end
  end

end