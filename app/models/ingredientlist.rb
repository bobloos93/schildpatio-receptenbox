class Ingredientlist < ActiveRecord::Base
  has_many :ingredients
  belongs_to :recipe


end
