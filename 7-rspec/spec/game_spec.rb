# Describe: Usado para identificar um grupo de exemplos de teste
# Context: Usado para identificar um contexto de teste
# It: Usado para identificar um exemplo de teste especifico
# Expect: Usado para definir o resultado esperado de um exemplo de teste
# eq: Usado para comparar o resultado esperado com o resultado obtido
# To: Usado para definir o que o exemplo de teste faz
# Be: Usado para definir o que o exemplo de teste é
# End: Usado para finalizar um bloco de código

# Before: Usado para executar um bloco de código antes de cada exemplo de teste
# After: Usado para executar um bloco de código depois de cada exemplo de teste
# Before(:all): Usado para executar um bloco de código antes de todos os exemplos de teste
# After(:all): Usado para executar um bloco de código depois de todos os exemplos de teste

# frozen_string_literal: true
require "models/game"

RSpec.describe "Game"  do
  before do
    # Executa um bloco de código antes de cada exemplo de teste
    @game = Game.new("Spider-Man: Miles Morales", 2020, ["Open World", "Action"])
  end

  context "when dealing with PS5 games" do
    it "should have a title" do
      # expect(@game.title).to eq("Spider-Man: Miles Morales")
      expect(@game.title).to be_truthy
    end
    
    it "should allow settigns and updating the title" do
      @game.title = "Demon's Souls"
      expect(@game.title).to eq("Demon's Souls")
      
      @game.title = "Ratchet & Clank: Rift Apart"
      expect(@game.title).to eq("Ratchet & Clank: Rift Apart")    
    end

    it "should have a release year within a specif range" do
      expect(@game.realese_year).to be_within(1).of(2020)
    end

    it "should have a list of features" do
      expect(@game.features).to eq(["Open World", "Action"])
    end
  end

  context "role-playing games (RPG)" do
    before(:each) do
      # Executa um bloco de código antes de cada exemplo de teste
      @rpg_game = Game.new("Cyberpunk 2077", 2020, ["Open World", "Action", "RPG"])
    end

    it "should have a title" do
      # expect(@game.title).to eq("Spider-Man: Miles Morales")
      expect(@rpg_game.title).to be_truthy
    end
    
    it "should allow settigns and updating the title" do
      @rpg_game.title = "Demon's Souls"
      expect(@rpg_game.title).to eq("Demon's Souls")
      
      @rpg_game.title = "Ratchet & Clank: Rift Apart"
      expect(@rpg_game.title).to eq("Ratchet & Clank: Rift Apart")    
    end



  end
end
