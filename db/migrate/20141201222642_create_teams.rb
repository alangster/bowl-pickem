class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
    	t.string  :school
    	t.string  :mascot
    	t.string  :location
    	t.integer :wins
    	t.integer :losses

      t.timestamps
    end
  end
end
