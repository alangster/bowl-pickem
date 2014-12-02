class Pick < ActiveRecord::Base

	belongs_to :user
	belongs_to :game
	belongs_to :winner, class_name: "Team"

	validates :user, :game, :winner, presence: true

end
