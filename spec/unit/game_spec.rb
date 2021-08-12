require 'game'
require 'player'

describe Game do

  describe "#attacked" do
  it "reduce player's HP by default attack" do
    #  player2 = double
    #  allow(player2).to receive(:hp) { 60 }
    #player2 = Player.new("Joe")
     expect { subject.attacked(player2) }.to change { player2.hp }.by(-Game::DEFAULT_ATTACK)
  end
end

end
