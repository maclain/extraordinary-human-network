class CommentsController < ApplicationController
	before_filter :authenticate_human!
	
	
	def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])
    @comment.human = current_human
    @comment.save
    redirect_to post_path(@post)
  end
end
