

class BidsController < ApplicationController
  def new
  end

  def show
  end

  def create 
  	
  end

  def update
    @game = params[:game_id]
  	@bid = Bid.find(params[:id])
  	place_bid(@bid, params[:bid][:submitted_bid])
    #@bid = Bid.find(params[:id])
    if current_bidder(@bid)=='East'||current_bidder(@bid)=='West'
      place_opponent_bid(@bid)
    end
    hello_world
  	redirect_to "/games/#{params[:game_id]}"
  end


end
