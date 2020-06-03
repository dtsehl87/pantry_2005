require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'

class RecipeTest < Minitest::Test

  def test_it_exists_and_has_name
    recipe1 = Recipe.new("Mac and Cheese")
    assert_instance_of Recipe, recipe1
    assert_equal "Mac and Cheese", recipe1.name
  end

  def test_it_defaults_to_no_ingredients_required
    recipe1 = Recipe.new("Mac and Cheese")
    expected = {}
    assert_equal expected, recipe1.ingredients_required
  end

end
