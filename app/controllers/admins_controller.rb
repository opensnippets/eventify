class AdminsController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :authenticate_user!, :only_admins!
	layout 'admins'
	
	def only_admins!
		#nil.test!
		if current_user.is_super_user?
			return true
		else
			redirect_to root_path
			flash[:notice] = "You dont have a permission to access this page. Thank you"
		end
	end
	
end