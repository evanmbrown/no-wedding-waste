class StaticPagesController < ApplicationController
	
	def home
		@user = User.find(current_user) if user_signed_in? == true
	end

	def about
		@user = User.find(current_user) if user_signed_in? == true
	end

end
