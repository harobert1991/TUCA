class StepsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @recipe = Recipe.find(params[:recipe_id])
    @steps = @recipe.steps
  end

  def product_params
    params.require(:step).permit( :sequence, :description, :photo, :step_time,
    dose_attributes: [ :id, :ingredient, :quantity, :unit ] )
  end
end
