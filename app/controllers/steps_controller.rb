class StepsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @recipe = Recipe.find(params[:recipe_id])
    @steps = @recipe.steps
  end
end
