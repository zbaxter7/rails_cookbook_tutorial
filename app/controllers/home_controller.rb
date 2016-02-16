class HomeController < ApplicationController
  def index
    @number_of_recipes = Recipe.count
    @latest_recipe = Recipe.last
    @title = "Home"
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end

end
