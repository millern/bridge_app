class GamesController < ApplicationController
  def new
  end

  def create
  	@game = Game.new(params[:game])
  	@game.save
  	redirect_to @game
  end

  def play

  end

  def show
  	@game = Game.find(params[:id])
  	@player1 = User.find(@game.user_1)
  	@player2 = User.find(@game.user_2)
  end

  def destroy
  	Game.find(params[:id]).destroy
  	redirect_to current_user
  end
end
