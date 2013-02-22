class BidsController < ApplicationController
  def new
  end

  def show
  end

  def create 
  	
  end

  def update
  	@bid = Bid.find(params[:id])
  	place_bid(@bid)
  	redirect_to "/games/#{params[:game_id]}"
  end
end
