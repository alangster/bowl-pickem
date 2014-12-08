class Pick < ActiveRecord::Base

	belongs_to :user
	belongs_to :game
	belongs_to :winner, class_name: "Team"

	validates :user, :game, :winner, presence: true
	validate  :winner_involved_in_game

	private

	def winner_involved_in_game
		errors.add(:winner, "Must be involved in game") unless (self.winner == self.game.home || self.winner == self.game.away)
	end

end
