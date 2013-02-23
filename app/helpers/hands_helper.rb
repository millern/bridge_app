module HandsHelper
	def generate_hand()
		suits = ['c','d','h','s']
		cards = ['A','2','3','4','5','6','7','8','9','10','J','Q','K']
		cardArray = []
		suits.each do |i|
			cards.each do |j|
				cdStr = i+j
				cardArray.push(cdStr)
			end
		end
		cardArray.shuffle

		# hand = Hand.new(game_id: curr_hand)
		#insert for loop to assign cards to new hand
	end
	def save_new_hand(current_game)
		hand = current_game.hands.build(game_id: current_game.id)
		cards = generate_hand()
		i = 1
		52.times do 
			index = "c#{i}"
			hand[index] = cards[i-1]
			i+=1
		end
		hand.save
		hand

	end

	def update_current_hand(hand,bid)
		hand.bid_id = bid.id
		hand.save
	end

	#View Methods
	#Return a string of cards to be displayed in the game view
	def display_cards(direction, cards)
		plyr_cards = Hash[ "North" => (1..13), "South" => (14..26),
							 "East" => (27..39), "West" => (40..52)]
		card_array = []
		plyr_cards[direction].each do |i|
			index = "c#{i}"
			card_array << cards[index]
		end
		card_display = sort(organize(card_array))
		
		cards_to_text(card_display)

	end

	def cards_to_text(card_display)
		
		return_string = ""
		return_string << "C: "
		return_string << card_display[0].join(' ').upcase
		return_string << "<br />"
		return_string << "D: "
		return_string << card_display[1].join(' ').upcase
		return_string << "<br />"
		return_string << "H: "
		return_string << card_display[2].join(' ').upcase
		return_string << "<br />"
		return_string << "S: "
		return_string << card_display[3].join(' ').upcase
		return_string << "<br />"
		return_string.html_safe

		
	end
	def organize(card_array)
		c_arr = []
		d_arr = []
		h_arr = []
		s_arr = []

		card_array.each do |card|
			case card[0]
			when "c"
				c_arr << card
			when "h"
				h_arr << card
			when "d"
				d_arr << card
			when "s"
				s_arr << card
			end
		end
		suited_array = [c_arr,d_arr,h_arr,s_arr]
	end

	def sort(card_array)
	return_cards = card_array
	card_order = ["A","K","Q","J","1","9","8","7","6","5","4","3","2"]

	return_cards.each do |suit|
		suit.sort_by!{|card| card_order.index(card[1]) }
	end
	return_cards
end

end
