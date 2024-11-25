=begin
  Exercício: Calculadora Simples com Minitest
  Descrição:
  Vamos criar uma calculadora simples em Ruby e escrever testes para garantir que as operações
  matemáticas básicas estejam corretas. Use o Minitest para criar testes para as funções de adição,
  subtração, multiplicação e divisão.
  Especificações:
  Crie uma classe chamada Calculator que tenha métodos para adição, subtração, multiplicação e divisão.
  Escreva testes para cada um desses métodos usando o Minitest.
  Certifique-se de testar diferentes cenários, incluindo números positivos, negativos e a divisão por zero.
=end

require 'minitest/autorun'

class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def multiply(a, b)
    a * b
  end

  def divide(a, b)
    a / b
  end
end

class TestCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_add
    assert_equal 5, @calculator.add(2, 3)
    assert_equal -1, @calculator.add(2, -3)
    assert_equal 0, @calculator.add(0, 0)
  end

  def test_subtract
    assert_equal 2, @calculator.subtract(5, 3)
    assert_equal 5, @calculator.subtract(2, -3)
    assert_equal 0, @calculator.subtract(0, 0)
  end

  def test_multiply
    assert_equal 6, @calculator.multiply(2, 3)
    assert_equal -6, @calculator.multiply(2, -3)
    assert_equal 0, @calculator.multiply(0, 0)  
  end

  def test_divide
    assert_equal 2, @calculator.divide(4, 2)
    assert_equal -2, @calculator.divide(4, -2)
    assert_equal 0, @calculator.divide(0, 2)
    assert_raises(ZeroDivisionError) { @calculator.divide(2, 0) }
  end
end