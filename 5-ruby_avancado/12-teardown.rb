require 'minitest/autorun'

class ShoppingCart
  # attr_accessor :items
  def initialize
    @items = {}
  end

  def add_item(product, quantity)
    @items[product] = quantity    
  end

  def remove_item(product)
    @items.delete(product)
  end

  def item_count
    @items.values.sum
  end

  def total_price
    product_prices = {
      "headphones" => 100,
      "book" => 1000
    }
    @items.sum do |product, quantity|
      product_prices[product] * quantity
    end
  end

  def clear
    @items = {}
  end
end

class TestShoppingCart < Minitest::Test
  def setup
    @cart = ShoppingCart.new
  end

  def teardown
    @cart.clear
  end

  def test_add_item
    @cart.add_item("headphones", 2)
    assert_equal 2, @cart.item_count, "O carrinho deve ter 2 itens"
  end

  def test_remove_item
    @cart.add_item("headphones", 2)
    @cart.remove_item("headphones")
    assert_equal 0, @cart.item_count, "O carrinho deve ter 0 itens"
  end

  def test_total_price
    @cart.add_item("headphones", 2)
    @cart.add_item("book", 1)
    assert_equal 1200, @cart.total_price, "O preço total deve ser 200"
  end
end