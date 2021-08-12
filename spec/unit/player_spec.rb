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
  
end