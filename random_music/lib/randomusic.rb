class Randomusic

  def tracks year
    result = []
    5.times { |x| result << rand(435) + 21 }
    result
  end

end