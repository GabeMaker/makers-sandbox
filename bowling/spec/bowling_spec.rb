require 'bowling'

describe Bowling do

  it 'has no score at the start of a game' do
    expect(Bowling.new.score).to eq 0
  end

  it 'should be able to bowl a frame and record the score' do
    game = Bowling.new
    game.bowl(8,1)
    expect(game.score).to eq 9
  end

  it 'should be able to bowl 2 frames and record the score' do
    game = Bowling.new
    game.bowl(8,1)
    game.bowl(9,0)
    expect(game.score).to eq 18
  end

end