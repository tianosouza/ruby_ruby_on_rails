require "models/game"

RSpec::Matchers.define :be_adult_only do
  match do |game|
    game.age_rating >= 18
  end

  failure_message do |game|
    "Expected #{game.title} to be adult only, but it's not #{game.age_rating}"
  end

  failure_message_when_negated do |game|
    "Expected #{game.title} not to be adult only, but it is #{game.age_rating}"
  end
end

RSpec.describe "Game" do
  let(:game) { Game.new("Test Game", 18) }
  let(:child_game) { Game.new("Child Game", 12) }
  let(:adult_game) { Game.new("Adult Game", 21) }

  it "is adult only" do
    expect(game).to be_adult_only
  end

  it "is not adult only" do
    expect(child_game).not_to be_adult_only
  end
end