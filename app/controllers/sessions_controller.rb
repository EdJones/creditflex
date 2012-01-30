class SessionsController < ApplicationController
  def new
  end

  def create
    user = login(params[:email], params[:password], params[:remember_me])
    if user
      redirect_back_or_to root_url, :notice => "Logged in!"
    else
	  flash.now.alert = "Invalid email or password"
      render "new"
	  #redirect_to(new_session_path)
    end
  end


def destroy
  logout
  redirect_to root_url, :notice => "Logged out!"
end
end
