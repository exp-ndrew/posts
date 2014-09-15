class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to user_path(current_user)
    end
  end

private

def post_params
  params.require(:post).permit(:body, :user_id)
end


end
