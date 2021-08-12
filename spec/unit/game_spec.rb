require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  let(:subject) { described_class.new(player_1, player_2) }

  describe "#initialize" do
    it 'accepts two players' do
      expect(subject).to respond_to(:player_1)
      expect(subject).to respond_to(:player_2)
    end
  end

  describe "#attack" do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2) 
    end
  end

end
