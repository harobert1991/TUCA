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
end
