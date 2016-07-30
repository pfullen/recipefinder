class RecipesController < ApplicationController
  def index
  	@search_keyword = params[:search] || "chocolate"
  		@recipes = Recipe.for(@search_keyword)
  		if @search_keyword == "mocha"
  			@search_keyword = "Kahlúa-Spiked"
  		end		

  				

  end
end