require 'player'

describe Player do
  it 'is initialized with a name' do
    player = Player.new(name: 'Gabe')
    expect(player.name).to eq 'Gabe'
  end

  it 'can pick a shape' do
    player = Player.new
    player.pick(:rock)
    expect(player.shape).to eq :rock
  end

  it 'has a win count' do
    player = Player.new
    expect(player.win_count).to eq 0
  end

  it 'can count wins' do
    player = Player.new
    player.win
    expect(player.win_count).to eq 1
  end
end