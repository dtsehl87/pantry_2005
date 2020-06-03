require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test

  def test_it_exists
    pantry = Pantry.new
    assert_instance_of Pantry, pantry
  end

  def test_it_defaults_to_empty_stock
    pantry = Pantry.new
    expected = {}
    assert_equal expected, pantry.stock
  end

end
