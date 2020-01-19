class AdminsController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :authenticate_user!, :only_admins!
	
	def only_admins!
		if current_user.is_super_user?
			nil.test!
			return true
		else
			flash[:notice] = "You dont have a permission to access this page. Thank you"
		end
	end
	
end