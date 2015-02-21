require 'player'

describe Player do
  it 'is initialized with a name' do
    player = Player.new(name: 'Gabe')
    
    expect(player.name).to eq 'Gabe'
  end
end