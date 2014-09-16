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
    respond_to do |format|
      format.html { redirect_to user_path(@user) }
      format.js
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    @post.destroy
    respond_to do |format|
      format.html { redirect_to user_path(@user) }
      format.js
    end
  end

private

def post_params
  params.require(:post).permit(:body, :user_id)
end


end
