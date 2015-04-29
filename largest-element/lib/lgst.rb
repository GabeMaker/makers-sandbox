class Array

  def lgst
    if self.count == 0
      nil
    elsif self.count == 1
      self.first
    else
      largest = 0
      self.each do |x|
        if x > largest
          largest = x
        else
          next
        end
      end
      return largest
    end
  end

end