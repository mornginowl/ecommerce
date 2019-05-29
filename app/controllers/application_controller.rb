class ApplicationController < ActionController::Base
	before_action :categories, :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller?
	def configure_permitted_parameters
	   devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
	   devise_parameter_sanitizer.permit(:account_update, keys: [:role])
	end

	rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden }
      format.html { redirect_to main_app.product_url, :alert => "Not authorized!" }
    end
  	end

#Our category and brand methods are below
	def categories
		@categories = Category.order(:name) #Select * from Categories order by name 
	end
end
