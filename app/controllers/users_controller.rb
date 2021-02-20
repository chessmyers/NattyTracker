class UsersController < ApplicationController

  def show
    @current_user = session[:current_user]
    redirect_to 'index' unless @current_user
  end
end
