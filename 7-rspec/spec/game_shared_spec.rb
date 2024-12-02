require "models/game"

RSpec.shared_examples "a PS5 game" do
  let(:game) { @game }

  it "should have a title" do
    expect(@game.title).to be_truthy
  end
end

RSpec.describe "Game"  do
  before do
    @game = Game.new("Spider -Man", 2020, ["Open World", "Action"])
  end

  context "when dealing with PS5 games" do
    include_examples "a PS5 game", @game
  end
end