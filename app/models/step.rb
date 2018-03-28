class Step < ApplicationRecord
  belongs_to :recipe, dependent: :destroy
end
