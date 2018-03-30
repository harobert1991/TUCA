class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  has_many :user_ingredients
end
