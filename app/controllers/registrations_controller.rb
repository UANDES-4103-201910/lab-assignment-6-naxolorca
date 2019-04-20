class RegistrationsController < ApplicationController
	def new
	
	end

	def create
		u = User.new user_params
		if u.save
			flash[:notice] = 'Created'
			redirect_to root_path
		else
			flash[:notice] = 'Error'
			redirect_to registrations_url
		end

	    #complete this method
	end
	def user_params 
							params.require(:registrations).permit(:name, :last_name, :email, :phone, :password)
    	end    
end
