class Bowling

  def initialize
    @score = 0
  end

  def score
    @score
  end

  def bowl(ball_one, ball_two = :strike)
    if ball_two != :strike
      @score += ball_one + ball_two
      if @strike == true
      @score += 10 + ball_one + ball_two
      @strike == false
    end
    else
      @strike = true
    end

  end

end