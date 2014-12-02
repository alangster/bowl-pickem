class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
    	t.string     :title
    	t.string     :location
    	t.datetime   :datetime
    	t.belongs_to :away 
    	t.belongs_to :home 
    	t.belongs_to :winner
    	t.boolean    :championship

      t.timestamps
    end
  end
end
