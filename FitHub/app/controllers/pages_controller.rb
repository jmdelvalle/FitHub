class PagesController < ApplicationController
  before_action :set_auth

  def index
  end

  def profile
  end

  def home
  	if current_user
  		render 'home'
  	else
  		redirect_to root_url
  	end
  	
  end
  private

  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
  end
end
