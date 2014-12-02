class User < ActiveRecord::Base

	has_many :picks

	has_secure_password

	validates :first_name, :last_name, :email, :password, presence: true
	validates :email, uniqueness: true

	def name
		"#{self.first_name} #{self.last_name}"
	end

end
