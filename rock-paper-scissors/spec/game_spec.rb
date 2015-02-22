require 'game'

describe Game do

  it 'has no players to start' do
    game = Game.new
    expect(game.players.count).to eq 0
  end  

end
