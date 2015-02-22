class Game

  attr_reader :players

  def initialize
    @players = []
  end 

  def player_two
    Player.new
  end
end


# class Game



#   attr_reader :pick

#   def choose(pick)
#     @pick = pick
#   end

#   def random_pick

#   end

# end


