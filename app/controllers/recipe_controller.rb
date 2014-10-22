class RecipeController < ApplicationController
  def home

  end

  def browse
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    1.times{ @recipe.ingredients.build }
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to :action => "show", :id => @recipe.id
    end
  end
end


  def recipe_params
    params.require(:recipe).permit(:name, :description, ingredients_attributes: [:amount, :unit_prefix, :name])
  end
