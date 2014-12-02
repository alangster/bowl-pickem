class Game < ActiveRecord::Base

	belongs_to :away,   class_name: "Team"
	belongs_to :home,   class_name: "Team"
	belongs_to :winner, class_name: "Team"
	has_many   :picks

end
