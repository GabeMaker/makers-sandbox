class Array

  def lgst
    if self.count == 0
      nil
    elsif self.count == 1
      self.first
    else
      self.last
    end
  end

end