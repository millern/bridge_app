

class HandsController < ApplicationController
  protect_from_forgery :except => :create
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
    hello_world
  	redirect_to "/games/#{@game.id}"
  end

end
