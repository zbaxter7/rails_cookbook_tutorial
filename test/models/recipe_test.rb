require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "creates a valid record" do
    recipe = Recipe.new
    recipe.title = "Ice water"
    recipe.ingredients = ["one glass", "water", "ice"].join("<br>")
    recipe.instructions = "Combine all ingredients into the glass and let sit for two minutes. server immediately."
    assert recipe.save
  end
  
  test "Should not save unless title is filled in" do
    recipe = Recipe.new
    assert !recipe.save
    assert recipe.errors[:title].include?("can't be blank")
  end

  test "should not save unless ingredients is filled in" do
    recipe = Recipe.new
    assert !recipe.save
    assert recipe.errors[:ingredients].include?("can't be blank")
  end

  test "sholuld not save unless instructions is filled in" do
    recipe = Recipe.new
    assert !recipe.save
    assert recipe.errors[:instructions].include?("can't be blank")
  end

  test "should only have one recipe with the same name" do
    @recipe = Recipe.new(:title =>"Toast")
    @recipe.valid?
    assert @recipe.errors[:title].include?("already been taken")
  end

end
