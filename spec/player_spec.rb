require_relative '../lib/player'

RSpec.describe Player do
  let(:player) { Player.new('Axel', 20) }

  it 'has a name' do
    expect(player.name).to eq('Axel')
    player.name = 'Choco'
    expect(player.name).to eq('Choco')
  end

  it 'has an age' do
    expect(player.age).to eq(20)
  end
end