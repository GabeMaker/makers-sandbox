class Randomusic

  def tracks year
    if year < 1980
      a = 436
      b = 20
    else
      a = 285
      b = 456
    end

    result = []
    5.times do |x|
      new_page = 0
      until new_page != 0 && result.include?(new_page) == false do
        new_page = rand(a) + b
      end
      result << new_page
    end
    result

  end

end