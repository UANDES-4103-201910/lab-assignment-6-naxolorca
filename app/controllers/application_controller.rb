class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index

  end

  def current_user
	@_current_user = session[:current_user_id] && 	User.find_by_id(session[:current_user_id]) unless define?(@_current_user)
	@_current_user


	#complete this method
  end

  def is_user_logged_in?
	#complete this method
  	logged_in = false
	if logged_in then true else redirect_to root_path end 
  end
end
