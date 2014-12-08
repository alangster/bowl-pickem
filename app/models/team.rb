class Team < ActiveRecord::Base

	has_many :picks, foreign_key: :winner
	has_many :games

end
