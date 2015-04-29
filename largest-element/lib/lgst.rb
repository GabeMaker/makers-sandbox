class Array

  def lgst
    return nil if self.count == 0
    largest = 0
    self.each do |x|
      largest = x if x > largest
    end
    return largest
  end

end