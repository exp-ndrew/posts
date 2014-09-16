class UsersController < ApplicationController

  def index
    @post = Post.new
    if !current_user
      @user = User.new
      @color = @user.random_color
      render "new"
    end
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

  def show
    @user = User.find(params[:id])
    @post = Post.new
    @posts = Post.all
  end

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :color)
  end


end
