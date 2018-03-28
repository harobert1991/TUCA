class Recipe < ApplicationRecord
  belongs_to :category
  has_many :steps, dependent: :destroy
  has_many :doses, :through => :steps
end
