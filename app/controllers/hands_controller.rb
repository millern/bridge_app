class HandsController < ApplicationController
  def new

  end

  def show
  end

  def create
  	@game = Game.find(params[:game_id])
  	@hand = save_new_hand(@game)
  	update_current_game(@hand, @game)
  	redirect_to "/games/#{@game.id}"
  end
end
