require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Category has many recipes" do
    recipe = Recipe.new
    recipe.title = "Scrambled Eggs"
    recipe.ingredients = ["Eggs", "Chalula", "Pepper"].join("<br>")
    recipe.instructions = "Make them"
    recipe.category_id = 1 
    assert recipe.save 

    recipe = Recipe.new
    recipe.title = "Omlet"
    recipe.ingredients = ["Eggs", "Chalula", "Pepper"].join("<br>")
    recipe.instructions = "Make them"
    recipe.category_id = 1
    assert recipe.save 
  end
end
