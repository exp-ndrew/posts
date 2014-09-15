class UsersController < ApplicationController

  def index
    logged_in?
    redirect_to new_user_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sessions[:user_id] = @user.id
      redirect_to root
    else
      render "new"
    end
  end

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end


end
