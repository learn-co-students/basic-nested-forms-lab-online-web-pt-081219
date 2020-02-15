class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredients_num: '1')
      @recipe.ingredients.build(ingredients_num: '2')


  end

  def create
    Recipe.create(recipe_params)
    redirect_to recipes_path
  end


  private

  def recipe_params
    params.require(:recipe).permit(
    :title,
    ingredient_attributes: [
      :name,
      :quantity,
      :ingredients_num
    ]
    )
  end

end
