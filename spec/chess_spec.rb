# spec/chess_spec.rb
require "pieces"


describe Pawn do
    pawn = Pawn.new(0,0)

  describe '#possible_moves' do
    context 'has one possible move' do
      it 'should move forward one space' do
        expect(pawn.possible_moves.to eql ([0,1])
      end
    end
  end


end
