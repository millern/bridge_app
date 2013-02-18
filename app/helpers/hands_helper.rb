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

	#display player cards in the games view
	def display_cards(direction, cards)
		plyr_cards = Hash[ "North" => (1..13), "South" => (14..26),
							 "East" => (27..39), "West" => (40..52)]

		card_array = []

		plyr_cards[direction].each do |i|
			index = "c#{i}"
			card_array << cards[index]
		end

		card_array

	end

end
