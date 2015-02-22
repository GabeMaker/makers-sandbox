class Player
  attr_reader :weapon

  def pick(weapon)
    @weapon = weapon
  end
end

# class Player
#   def initialize(opt = {})
#     @name = opt.fetch(:name)
#   end

#   attr_reader :name

#   def pick(weapon)
#     @pick = weapon
#   end
# end


# class Computer < Player
#   def choose_weapon
#     # @pick = [1,2,3].sample
#   end
# end








