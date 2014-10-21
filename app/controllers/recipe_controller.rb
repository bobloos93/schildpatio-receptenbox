class RecipeController < ApplicationController
  def overview
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    3.times{ @recipe.ingredients.build }
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
          raise

      redirect_to :action => "show", :id => @recipe.id
    end
  end
end


  def recipe_params
    params.require(:recipe).permit(:name, ingredients_attributes: [:name, :amount])
  end
