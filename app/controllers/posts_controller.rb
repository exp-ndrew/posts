class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to user_path(current_user)
    end
  end

  def update
    @post = Post.find(params[:id])
    @user = current_user
    @post.update(post_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to user_path(@user)
  end

private

def post_params
  params.require(:post).permit(:body, :user_id)
end


end
