class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
    	t.belongs_to :user
    	t.belongs_to :game
    	t.belongs_to :winner
    	t.integer    :total_score

      t.timestamps
    end
  end
end
