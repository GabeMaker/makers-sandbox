class Game

  attr_reader :players

  def initialize
    @players = []
  end

  def add(player)
    raise "Sorry, you can't have more than two players" if players.count == 2
    players << player
  end

  def winner
    players.first
  end

end



#   def player_two
#     Player.new
#   end
# end


# class Game



#   attr_reader :pick

#   def choose(pick)
#     @pick = pick
#   end

#   def random_pick

#   end

# end


