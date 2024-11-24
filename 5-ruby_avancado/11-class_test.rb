require 'minitest/autorun'

class Pessoa
  attr_accessor :nome, :idade
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def apresentar
    "Olá, eu sou #{@nome} e tenho #{@idade} anos."
  end
end

class TestPessoa < Minitest::Test
  def setup
    @pessoa = Pessoa.new("João", 30)
  end

  def test_initialize
    assert_equal "João", @pessoa.nome
    assert_equal 30, @pessoa.idade
  end

  def test_apresentar
    assert_equal "Olá, eu sou João e tenho 30 anos.", @pessoa.apresentar
  end
end