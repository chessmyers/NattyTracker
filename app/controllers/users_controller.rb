class UsersController < ApplicationController
  
  
  def new
    @user = User.new
  end

  def create
    @user = User.create(params.require(:user).permit(:username, :name))

    session[:user_id] = @user.id

    redirect_to '/welcome'
  end

  def show
    @current_user = User.find session[:current_user] || User.new
  end
end
