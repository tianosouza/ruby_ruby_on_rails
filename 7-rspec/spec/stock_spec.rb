require "models/stock"

RSpec.shared_examples "a stock" do
  let(:stock) { described_class.new }

  it "add a game to stock" do
    stock.add_game("Super Mario", 1)
    expect(stock.games["Super Mario"]).to eq(1)
  end

  it "remove a game from stock" do
    stock.add_game("Super Mario", 1)
    stock.remove_game("Super Mario", 1)

    expect(stock.games["Super Mario"]).to eq(0)
  end

  it "check if a game is available" do
    stock.add_game("Super Mario", 1)
    expect(stock.available?("Super Mario")).to be true
  end
end

RSpec.describe Stock do
  include_examples "a stock"
end