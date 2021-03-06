class ApplicationController < ActionController::Base
  protect_from_forgery
  #check_authorization
   rescue_from CanCan::AccessDenied do |exception|
	logger.debug "Cancan denied Access: #{ exception.subject } "
	if current_user
		redirect_to :root, :notice => exception.message
	else	
		logger.debug "Access Denied: #{ exception.message } "
		redirect_to :login, :notice => exception.message
	end
  end
  
  private
  
  def not_authenticated
    redirect_to login_url, :alert => "First log in to view this page."
  end
  #def current_user
    #User.find_by_id(session[:user_id]) 
	#|| User.new(:username => "Guest", :role => "guest")
  #end

end
