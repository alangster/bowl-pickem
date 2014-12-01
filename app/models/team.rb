class Team < ActiveRecord::Base

	has_one :game, foreign_key: :away
	has_one :game, foreign_key: :home
	has_one :game, foreign_key: :winner

end
