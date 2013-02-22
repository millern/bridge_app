module GamesHelper
	def find_user_games(user)
		@games = user.games
		@games += user.games_as_p2
	end
	def update_current_game(hand, game)
		game.hand_id = hand.id
		game.save
	end
end
