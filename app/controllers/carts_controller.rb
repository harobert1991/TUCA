class CartsController < ApplicationController

  def index
    @carts = Cart.where(user: current_user)
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

  end

  def destroy_all
    @carts = Cart.where(user: current_user)
    @carts.destroy_all

    redirect_to carts_path
  end

end
