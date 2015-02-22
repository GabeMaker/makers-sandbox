require 'game'

describe Game do

  it 'has no players to start' do
    game = Game.new

    expect(game.players.count).to eq 0
  end  

  it 'can add 2 players' do
    game = Game.new
    player_one = double :player_one
    player_two = double :player_two

    game.add player_one
    game.add player_two

    expect(game.players).to eq [player_one, player_two]
  end

  it 'cannot add more than two players' do
    game = Game.new
    player_one = double :player_one

    expect{3.times { game.add player_one }}.to raise_error "Sorry, you can't have more than two players"
    expect(game.players).to eq [player_one, player_one]
  end    

end
