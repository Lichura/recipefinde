class RecipesController < ApplicationController
  def index
  	@time = Time.now
  	@search_term = 'chocolate'
  	@recipes = Recipes.for(@search_term)
  end
end
