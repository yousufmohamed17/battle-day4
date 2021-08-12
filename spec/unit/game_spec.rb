require 'game'

describe Game do

  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe "#initialize" do
    it 'accepts two players' do
      expect(Game).to respond_to(:new).with(2).arguments
    end
  end

  describe "#attack" do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2) 
    end
  end

end
