class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user 
      return head(:forbidden) unless @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to welcome_path
    else
      flash[:alert] = "Please enter the correct username or password."
      redirect_to login_path
    end
  end
end
