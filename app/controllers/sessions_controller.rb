class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
		else
			@error_message = "Invalid email/password combination"
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to signin_path
	end
end
