module BidsHelper
	def save_new_bid(current_hand)
		new_bid = current_hand.bids.build(hand_id: current_hand.id, 
													first_bid: 'N1')
		new_bid.save
		new_bid
	end

	def place_bid(bid)
	end
end
