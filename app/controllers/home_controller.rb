class HomeController < ApplicationController
	before_filter :authenticate_human!

	def index
		
	end
end
