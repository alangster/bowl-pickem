class SessionsController < ApplicationController

	def new
		@user = User.new
	end

	def create
		if @user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
			session[:user_id] = @user.id
			redirect_to current_user
		else
			flash[:message] = "Woops! That wasn't right."
			render "new"
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:message] = "Successfully logged out."
		redirect_to :root
	end

end