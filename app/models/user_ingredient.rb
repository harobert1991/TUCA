class UserIngredient < ApplicationRecord
  belongs_to :cart
  belongs_to :dose
end
