class Bowling

  def initialize
    @score = 0
  end

  def score
    @score
  end

  def bowl(ball_one, ball_two = :strike)
    @score += ball_one + ball_two if ball_two != :strike
  end

end