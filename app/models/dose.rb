class Dose < ApplicationRecord
  belongs_to :step, dependent: :destroy
  has_many :user_ingredients
end
