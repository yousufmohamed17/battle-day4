require 'player'

describe Player do
  let(:subject) { Player.new("Joe") }

  describe "#initialize" do
    it "can return a player's name" do
      expect(subject.name).to eq("Joe")
    end

    it "initialize with full HP" do
      expect(subject.hp).to eq(Player::DEFAULT_HP)
    end
  end

  describe "#is_attacked" do
    it "reduce player's HP by default attack" do
       expect { subject.is_attacked }.to change { subject.hp }.by(-Player::DEFAULT_ATTACK)
    end
  end
end