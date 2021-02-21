class SessionsController < ApplicationController
  layout "welcome_session"

  def create
    @user = User.find_by(username: params[:username])

    if @user
      session[:user_id] = @user.id

      redirect_to '/welcome'
    else
      redirect_to '/login'
    end
  end

  #def login

  #end

  def welcome
    @welcome_props = {name:  current_user.name }
  end
end