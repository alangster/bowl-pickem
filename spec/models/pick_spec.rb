require 'rails_helper'

RSpec.describe Pick, :type => :model do

	before(:all) do
		@user = create(:user)
	end

	after(:all) do
		User.destroy_all
	end

	let(:game) {build(:game)}
	let(:user) {@user}
	let(:team) {build(:team)}
	let(:pick) {build(:pick, :user => user, :game => game, :winner => team)}

	describe '#user' do 
		it 'returns the user' do
			expect(pick.user).to eq(user)
		end
	end

	describe '#game' do 
		it 'returns the game' do
			expect(pick.game).to eq(game)
		end
	end

	describe '#winner' do
		it 'returns the winner' do
			expect(pick.winner).to eq(team)
		end
	end

	describe '#total_score' do
		it 'returns the score guess' do
			pick_2 = build(:pick, :user => user, :game => game, :winner => team, :total_score => 30)
			expect(pick_2.total_score).to eq(30)
		end
	end

	describe 'winner validation' do

		before(:all) do
			@team = create(:team)
			@game = create(:game, :away => @team, :home => create(:team))			
		end

		context 'winner is not a team involved in the game' do
			it 'is invalid' do
				pick = build(:pick, :user => user, :game => @game, :winner => create(:team))
				expect(pick).not_to be_valid
			end
		end

		context 'winner is a team involved in the game' do
			it 'is valid' do
				pick = build(:pick, :user => user, :game => @game, :winner => @team)
				expect(pick).to be_valid
			end
		end

	end

end
