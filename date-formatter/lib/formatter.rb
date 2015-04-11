class String

  def formatter
    months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "November", "December"]
    month_no = self[5..6]
    if self[5] == 0
      month_no = self[6]
    end
    month = months[month_no.to_i-1]

    if self[-2] == "0"
      return month + " #{self[-1]}" + " #{self[0,4]}"
    else
      return month + " #{self[-2..-1]}" + " #{self[0,4]}"
    end
  end

end