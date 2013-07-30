class HomeController < ApplicationController
	before_filter :authenticate_human!

	def index
		@human = current_human
		@post  = current_human.posts.build
		@posts = Post.all
		
    @feed_items = current_human.feed.paginate(page: params[:page])
    
   
    
   # @post = Post.find(params[:post_id])
   # @comment = @post.comments.create(params[:comment])	
	end		
end
