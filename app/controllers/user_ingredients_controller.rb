class UserIngredientsController < ApplicationController

  def found
     @uI = UserIngredient.find(params[:user_ingredient_id])
     @uI.Found = true
     @uI.save!
     respond_to do |format|
        format.js
     end
  end

  def new
    @cart = Cart.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @cart = Cart.new(user: current_user, recipe: @recipe)
    @cart.save!
    redirect_to carts_path
  end

  def destroy
    raise
    @cart = Cart.find(params[:id])
    @user_ingredient = @cart.user_ingredients
    redirect_to carts_path
  end
end
