require 'rails_helper'

RSpec.describe PostGameHelper, :type => :helper do

	describe '#set_winner' do

		it 'sets the game winner' do 
			game = build(:game)
			team = build(:team)
			expect{set_winner(game, team)}.to change{game.winner}.from(nil).to(team)
		end

	end

	describe '#update_correct_counts' do

		it 'increments only the correct users number correct' do

			correct_users   = Array.new(3) { create(:user) }
			incorrect_users = Array.new(3) { create(:user) }
			team_1, team_2  = create(:team), create(:team)
			game            = create(:game, :winner => team_1) 

			correct_users.each {|user| create(:pick, :user => user, :game => game, :winner => team_1)}
			incorrect_users.each {|user| create(:pick, :user => user, :game => game, :winner => team_2)}

			expect{update_correct_counts(game)}
				.to change{correct_users.map {|u| u.reload.correct}}
				.from([0,0,0]).to([1,1,1])
			expect(incorrect_users.map {|i_u| i_u.reload.correct})
				.to eq([0,0,0])
		end

	end

end