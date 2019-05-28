class ApplicationController < ActionController::Base
	before_action :categories
	def categories
		@categories = Category.order(:name) #Select * from Categories order by name 
	end
end
