class Step < ApplicationRecord
  belongs_to :recipe, dependent: :destroy
  has_many :step_tools
  has_many :tools, through: :step_tools
  has_many :doses, dependent: :destroy
  accepts_nested_attributes_for :doses
end
