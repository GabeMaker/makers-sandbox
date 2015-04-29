class Array

  # writing method without using #max

  def lgst
    self.count == 0 ? lgst = nil : lgst = 0
    self.each do |x|
      lgst = x if x > lgst
    end
    return lgst
  end

end