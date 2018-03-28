class Dose < ApplicationRecord
  belongs_to :step, dependent: :destroy
end
