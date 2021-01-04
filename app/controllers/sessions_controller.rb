class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user 
      return head(:forbidden) unless @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to welcome_path
    else
      flash[:alert] = "Please enter the correct password"
      redirect_to login_path
    end
  end
end
