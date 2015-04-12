class String

  def formatter
    months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "November", "December"]
    self[5] == 0 ? month_no = self[6] : month_no = self[5..6]
    month = months[month_no.to_i-1]

    self[-2] == "0" ? day = self[-1] : day = self[-2..-1]

    return month + " " + day + " #{self[0,4]}"
  end

end

