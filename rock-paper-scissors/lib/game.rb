class Game

  attr_reader :player_one, :player_two

  def initialize
    @player_one = nil
    @player_two = nil
  end

  def player_two
    Player.new
  end
end


# describe Game do
#   it 'has no players' do
#     game = Game.new

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


