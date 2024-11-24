require 'minitest/autorun'

def sum(a, b)
  a + b
end

def palindromo?(string)
  string.downcase == string.downcase.reverse
end

class TestSum < Minitest::Test
  def test_sum
    assert_equal 3, sum(1, 2)
  end
  def test_sun_again
    assert_equal 5, sum(2, 3)
  end
end

class TestPalindromo < Minitest::Test
  def test_palindromo
    assert palindromo?("radar")
    assert palindromo?("kayak")
    assert_equal false, palindromo?("ruby")
  end
end