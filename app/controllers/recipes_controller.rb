class RecipesController < ApplicationController
  skip_before_action :authenticate_user!
  def index

    if params[:category]
      @category = Category.find_by(name: params[:category])
      @recipes = Recipe.where(category: @category)
    else
      @recipes = Recipe.all
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def search
    if params[:query].present?
      @recipes = Recipe.search_req(params[:query])
    else
      @recipes = Recipe.all
    end
  end

  def recipe_ingredients
    ingredient_array = []
    self.dose.each do |d|
      ingredient_array << d.ingredient
    end
    unique_ingredients = ingredient_array.uniq
  end
end
