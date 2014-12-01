class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
    	t.string     :title
    	t.string     :location
    	t.datetime   :datetime
    	t.belongs_to :away,   :default => "TBD"
    	t.belongs_to :home,   :default => "TBD"
    	t.belongs_to :winner, :default => "TBD"
    	t.boolean    :championship

      t.timestamps
    end
  end
end
