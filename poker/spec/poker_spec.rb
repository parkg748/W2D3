require 'game.rb'
require 'player.rb'
require 'hand.rb'
require 'deck.rb'
require 'card.rb'

RSpec.describe Card do
  # subject(:card) {Card.new('club','2')}
  subject(:card) {Card.new('♣︎','2')}
  describe '#initialize' do
    it 'Should take a suit' do
      expect(card.suit).to eq('♣︎')
      # expect(card.suit).to eq('club')
    end
    
    it 'Should take a type' do
      expect(card.type).to eq('2')
    end
    
    it 'Should initialize a color' do
      expect(card.color).to eq(:black)
    end
    
  end
  
  describe '#pick_color' do
    # subject(:card) {Card.new('heart','8')}
    subject(:card) {Card.new('♥︎','8')}
    it 'Should set card color to red' do
      expect(card.pick_color).to eq(:red)
    end
  end
end
  
RSpec.describe Deck do
  subject(:deck) {Deck.new}
  describe '#initialize' do
    it 'creates deck and shuffles deck' do
      expect(deck).to receive(:create_deck)
      expect(deck).to receive(:shuffle_deck)
    end
  end
  
  describe '#create_deck' do
    it 'should have 52 unique combinations' do
      deck.create_deck
      expect(deck.deck.uniq.length).to eq(52)
    end
    
    it 'populates the deck array with all unique card combinations' do
      deck.create_deck
      expect(deck.deck.first).to be_a(Card)
    end
  end
  
  describe '#shuffle_deck' do
    it 'deck should become randomized' do
      deck_copy = deck.dup
      expect(deck.shuffle_deck).to_not eq(deck_copy)
    end
  end
end