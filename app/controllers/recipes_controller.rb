class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(quantity: "1")
    @recipe.ingredients.build(quantity: "2")
  end

  def create
    @recipe = Recipe.create(post_params)
    redirect_to recipe_path(@recipe)
  end

private
  def post_params
    params.require(:recipe).permit(:title, ingredients_attributes:[
      :name,
      :quantity
    ]
    )
  end    

end
