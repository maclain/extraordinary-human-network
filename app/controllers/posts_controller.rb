class PostsController < ApplicationController
	before_filter :authenticate_human!
	before_filter :correct_human, only: :destroy
	
	def show
		@human = current_human
		@post = current_human.posts.build
		@posts = current_human.posts.paginate(page: params[:page])
	end
	
	def create
		@post =  current_human.posts.build(post_params)
		if @post.save	
			flash[:success] = "Post created!"
			redirect_to home_path
		else
			@feed_items = []
			render 'static_pages/home'
		end
	end
	
	def destroy
		@post.destroy
		redirect_to home_path
	end
	
	private
	
		def post_params
			params.require(:post).permit(:content)
		end
		
		def correct_human
			@post = current_human.posts.find_by_id(params[:id])
			redirect_to home_path if @post.nil?
		end
end
