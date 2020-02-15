class AddIngrNumToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :ingredients_num, :integer

  end
end
