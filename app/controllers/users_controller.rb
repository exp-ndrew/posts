class UsersController < ApplicationController

  def index
    if !current_user
      @user = User.new
      @color = @user.random_color
      render "new"
    else
      @posts = current_user.posts
    end
    @post = Post.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render "new"
    end
  end


private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :color)
  end


end
