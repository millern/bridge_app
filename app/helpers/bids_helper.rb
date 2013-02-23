module BidsHelper
	def save_new_bid(current_hand)
		new_bid = current_hand.bids.build(hand_id: current_hand.id, 
													first_bid: 'N1',
													current_bid: 'N1')
		new_bid.save
		new_bid
	end

	def place_bid(bid,placed_bid)
		bid[bid.current_bid] = placed_bid
		update_current_bid(bid)	
	end

	def update_current_bid(bid)

		orig_bid = bid.current_bid
		first_bid = bid.first_bid
		first_dir = first_bid[0]
		dir = orig_bid[0]
		num = Integer(orig_bid[1])
		new_bid = ""
		

		case dir
		when "N"
			new_bid << "E"
			if first_dir == "E"
				new_bid << String(num+1)
			else 
				new_bid << String(num)
			end
		when "E"
			new_bid << "S"
			if first_dir == "S"
				new_bid << String(num+1)
			else 
				new_bid << String(num)
			end
		when "S"
			new_bid << "W"
			if first_dir == "W"
				new_bid << String(num+1)
			else 
				new_bid << String(num)
			end
		when "W"
			new_bid << "N"
			if first_dir == "N"
				new_bid << String(num+1)
			else 
				new_bid << String(num)
			end
		else
			new_bid << "N1"
		end


		bid.current_bid=new_bid
		bid.save
	end

	def current_bidder(bid)
		case bid.current_bid[0]
		when "N"
			return "North" 
		when "S"
			return "South"
		when "E"
			return "East"
		when "W"
			return "West"
		else 
			return "Somebody"
		end
	end
end
