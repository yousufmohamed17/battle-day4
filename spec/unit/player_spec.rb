require 'player'

describe Player do
  it "can return a player's name" do
  test = Player.new("TestName")
  expect(test.name).to eq("TestName")
  end
end