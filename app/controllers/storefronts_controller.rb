class StorefrontsController < ApplicationController

	def all_items
	    @products = Product.all
	  
	end
	def items_by_category
		@products = Product.where(category_id: params[:category_id]) #select products where category_id = 
		@category = Category.find(params[:category_id]) #select Category where category id = 
	end
	def items_by_brand
	end
end