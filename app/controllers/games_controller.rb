class GamesController < ApplicationController
  def new
  end

  def create
  	@game = Game.new(params[:game])
    @hand = save_new_hand(@game)
    update_current_game(@hand,@game)
  	redirect_to @game
  end

  def play

  end

  def show
    @current_user = current_user
  	@game = Game.find(params[:id])
  	@player1 = User.find(@game.user_1)
  	@player2 = User.find(@game.user_2)
    @hand = Hand.find(@game.hand_id)
    @bid = Bid.find(@hand.bid_id)
  end

  def destroy
  	Game.find(params[:id]).destroy
  	redirect_to current_user
  end
end
