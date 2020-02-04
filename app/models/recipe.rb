class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  # def ingredients_attributes=(ingredients_params)
  #   self.ingredient = Ingredient.find_or_create_by(ingredients_params)
  #   self.ingredient.update(ingredient)
  # end

end
