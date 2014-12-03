module PostGameHelper

	def set_winner(game, winner)
		game.update_attributes(winner: winner)		
	end

	def update_correct_counts(game)
		correct_picks = Pick.where(game: game, winner: game.winner)
		correct_picks.map {|pick| pick.user.increment!(:correct)}
	end

end