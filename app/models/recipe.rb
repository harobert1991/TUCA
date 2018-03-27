class Recipe < ApplicationRecord
  belongs_to :category
  has_many :steps
end
