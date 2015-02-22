require 'game'

describe Game do

  let(:game) { game = Game.new } 

  it 'has no players to start' do
    expect(game.players.count).to eq 0
  end  

  it 'can add 2 players' do
    player_one = double :player_one
    player_two = double :player_two

    game.add player_one
    game.add player_two

    expect(game.players).to eq [player_one, player_two]
  end

  it 'cannot add more than two players' do
    player_one = double :player_one

    expect{3.times { game.add player_one }}.to raise_error "Sorry, you can't have more than two players"
    expect(game.players).to eq [player_one, player_one]
  end

  it 'can decide a winner' do
    rock_player     = double :player1, shape: :rock
    scissors_player = double :player2, shape: :scissors
    game.add rock_player
    game.add scissors_player

    expect(game.winner).to eq rock_player
  end 

  xit 'knows that rock loses to paper'

end
