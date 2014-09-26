class CategoriesController < ApplicationController

	def index
  		@projectss = Project.all
   	 	@categories = Category.all
	end

	def show
  		@category = Category.find(params[:id])
 	end
 	
end
