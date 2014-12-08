class User < ActiveRecord::Base

	has_many :picks

	has_secure_password

	validates :first_name, :last_name, :email, :password, presence: true
	validates :email, uniqueness: true

	def name
		"#{self.first_name} #{self.last_name}"
	end

	def done_picking?
		games = Game.all
		picked_games = self.picks.map {|pick| pick.game}
		games.to_set == picked_games.to_set
	end

end
