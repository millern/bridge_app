class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
    @games = find_user_games(@user)
    @users = User.all
    @users.delete(@user)
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      sign_in @user
  		redirect_to @user
  	else
  		@error_messages = @user.errors.full_messages
  		@user = User.new
  		render 'new'
  	end
  end
end
