class HumenController < ApplicationController
	
	def show
		@posts = Post.all
	end
end
