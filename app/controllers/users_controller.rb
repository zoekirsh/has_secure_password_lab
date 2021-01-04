class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.create(user_params)
    if @user[:password] == @user[:password_confirmation]
      session[:user_id] = @user.id
    elsif @user[:password] != @user[:password_confirmation]
      flash[:alert] = "Passwords not match."
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
