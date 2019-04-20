class SessionsController < ApplicationController
	def new
	end

	def create
		u = User.find_by(email: login_params[:email])
		if u.password==login_params[:password] && u
			flash[:notice] = 'Login'
			redirect_to user_path(u)
		else
			flash[:notice] = 'Error'
			redirect_to toot_url
		end
		#complete this method

	end

	def destroy
	@_current_user =session[:current_user_id] = nil
	redirect_to toot_url
	end

	def login_params

		params.require(:sesion).permit(:email,:password)
	end

	
end
