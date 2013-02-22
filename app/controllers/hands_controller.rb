class HandsController < ApplicationController
  def new

  end

  def show
  end

  def create
  	@game = Game.find(params[:game_id])
  	@hand = save_new_hand(@game)
    @bid = save_new_bid(@hand)
  	update_current_game(@hand, @game)
    update_current_hand(@hand,@bid)
  	redirect_to "/games/#{@game.id}"
  end
end
