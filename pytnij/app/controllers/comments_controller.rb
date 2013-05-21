class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params[:comment])
    @comment.email = current_user.email
    @comment.save
    redirect_to @post
  end
end
