class UsersController < ApplicationController

	def index
		
	end

	def show
		@start = Game.pluck(:datetime).min
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			flash[:message] = "Welcome!"
			redirect_to current_user
		else
			flash[:message] = @user.errors.full_messages.join(" ")
			render "new"
		end
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	end

end