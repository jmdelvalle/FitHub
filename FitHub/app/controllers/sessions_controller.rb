class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    session[:omniauth] = auth.except("extra")
    user = User.sign_in_from_omniauth(auth)
    session[:user_id] = user.id
    redirect_to users_home_path
  end

  def destroy
    session[:user_id] = nil
    session[:omniatuh] = nil
    reset_session
    redirect_to root_url
  end
end
