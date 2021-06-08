require_relative '../lib/card'

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank that can be changed' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit that can be changed' do
    expect(card.suit).to eq('Spades')
    card.suit = 'Hearts'
    expect(card.suit).to eq('Hearts')
  end
end

