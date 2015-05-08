class Randomusic

  def tracks year
    result = []
    5.times do |x|
      new_page = 0
      until new_page != 0 && result.include?(new_page) == false do
        new_page = rand(435) + 21
      end
      result << new_page
    end
    result
  end

end