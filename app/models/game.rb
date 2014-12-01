class Game < ActiveRecord::Base

	belongs_to :away,   class_name: :team
	belongs_to :home,   class_name: :team
	belongs_to :winner, class_name: :team
	has_many   :picks

end
