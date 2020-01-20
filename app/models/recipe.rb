class Recipe < ActiveRecord::Base
  has_many :ingredients 

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.each do |i, attribute|
      self.ingredients.build(attribute)
    end
  end

end
