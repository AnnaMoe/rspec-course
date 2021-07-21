class Card
  attr_reader :rank, :suit
 
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades')}

  it 'has a rank' do
  #specify 'has a rank' do (alias to line 10)
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison}, but I got #{card.suit} instead."
  end
end

function maskify (creditCard) {
  // add your code here
  arrayCreditCard = creditCard.split("")
  arrayCreditCard.splice(1,, #)
  
}
