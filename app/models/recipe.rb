class Recipe < ApplicationRecord
  belongs_to :category
  has_many :steps, dependent: :destroy
  has_many :doses, :through => :steps
  has_many :carts
  has_many :favorites
  include PgSearch
  pg_search_scope :search_req, :against => [:name, :description, :cooking_time],    associated_against: {
      doses: [ :ingredient]
    }
end
