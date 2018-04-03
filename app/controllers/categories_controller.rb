class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @categories = Category.all
    @recipe_of_the_day = Recipe.all.sample
  end

  def show
    @category = Category.find(params[:id])
  end

  def article_params
  params.require(:article).permit(:title, :body, :photo)
  end
end

