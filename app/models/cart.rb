class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  has_many :user_ingredients, dependent: :destroy
  after_create :set_shopping_list

  private

  def set_shopping_list
    self.recipe.steps.each do |s|
        s.doses.each do |d|
           UserIngredient.create(cart: self, dose: d)
        end
    end
  end


end
