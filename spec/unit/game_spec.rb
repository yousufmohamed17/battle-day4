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

    it "starts with turn for player 1" do
      expect(subject.turn).to eq(1)
    end
  end

  describe "#attack" do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2) 
    end
  end

  describe "#change_turn" do
    it "should increase turn attribute by 1" do
      expect { subject.change_turn }.to change { subject.turn }.by(1)
    end
  end

  describe "#next_turn" do
    it "should tell us who's turn is next" do
      expect(subject.next_turn).to eq(subject.player_2)
    end
  end
end
