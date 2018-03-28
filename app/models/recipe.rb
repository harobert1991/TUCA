class Recipe < ApplicationRecord
  belongs_to :category
  has_many :steps, dependent: :destroy
  has_many :doses, :through => :steps
  include PgSearch
  pg_search_scope :search_req, :against => [:name, :description, :cooking_time],    associated_against: {
      doses: [ :ingredient]
    }
end
