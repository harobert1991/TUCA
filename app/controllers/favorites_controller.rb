class FavoritesController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    Favorite.create!(recipe: @recipe, user: current_user)
    redirect_to dashboard_path, flash: {notice: "You liked #{@recipe.name}"}
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to dashboard_path
  end
end
