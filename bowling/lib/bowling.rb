class Bowling

  def initialize
    @score = 0
  end

  def score
    @score
  end

  def bowl(ball_one, ball_two)
    @score += ball_one + ball_two
  end

end