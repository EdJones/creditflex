class ApplicationController < ActionController::Base
  protect_from_forgery
  #check_authorization
   # rescue_from CanCan::AccessDenied do |exception|
	#logger.debug "Access Denied: #{ exception.message } "
   # redirect_to root_url, :alert => exception.message
  #end
end
