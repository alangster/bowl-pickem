require 'rails_helper'

RSpec.describe User, :type => :model do

	let(:user) {build(:user)}

	describe '#name' do
		it 'returns first and last name' do
			user_2 = build(:user, :first_name => "Joe", :last_name => "Bags")
			expect(user_2.name).to eq("Joe Bags")
		end
	end

	describe '#correct' do

		context 'new user' do 
			it 'returns 0' do
				expect(user.correct).to eq(0)
			end
		end

		context '3 correct picks' do
			it 'returns 3' do
				user_2 = build(:user, :correct => 3)
				expect(user_2.correct).to eq(3)
			end
		end

	end

	describe '#picks' do
		
		it 'returns array of user picks' do 
			picks = Array.new(5) { build(:pick) }
			user.picks << picks
			expect(user.picks).to eq(picks)
		end

	end

	describe '#done_picking' do

		before(:all) do
			team_1 = create(:team)
			team_2 = create(:team)
			team_3 = create(:team)
			team_4 = create(:team)
			team_5 = create(:team)
			team_6= create(:team)
			game_1 = create(:game, :home => team_1, :away => team_2)
			game_2 = create(:game, :home => team_3, :away => team_4)
			game_3 = create(:game, :home => team_5, :away => team_6)
			@user = create(:user)
			create(:pick, :user => @user, :game => game_1, :winner => team_1)
			create(:pick, :user => @user, :game => game_2, :winner => team_4)
			create(:pick, :user => @user, :game => game_3, :winner => team_5)
		end

		after(:all) do
			Game.destroy_all
			User.destroy_all
			Pick.destroy_all
			Team.destroy_all
		end

		let(:user) {@user}

		context 'user has made a pick for every game' do
			it 'returns true' do
				expect(user).to be_done_picking
			end
		end

		context 'user has not made a pick for every game' do
			it 'returns false' do
				create(:game, :home => create(:team), :away => create(:team))
				expect(user).not_to be_done_picking
			end
		end

	end

end
