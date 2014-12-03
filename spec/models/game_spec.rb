require 'rails_helper'

RSpec.describe Game, :type => :model do

	let(:usc)  {build(:team)}
	let(:nd)   {build(:team)}
	let(:game) {build(:game, :title => "Big Bowl", :away => nd, :home => usc)}
	

	describe '#title' do
		it 'returns the title' do
			expect(game.title).to eq("Big Bowl")
		end
	end 

	describe '#location' do 
		it 'returns the location' do
			expect(game.location).to eq("Los Angeles, CA")
		end
	end

	describe '#away' do 
		it 'returns the away team' do 
			expect(game.away).to eq(nd)
		end
	end

	describe '#home' do 
		it 'returns home team' do 
			expect(game.home).to eq(usc)
		end
	end

	describe '#championship?' do

		context 'game is not the championship' do
			it 'returns false' do
				expect(game.championship?).to be_falsy
			end
		end

		context 'game is championship' do
			it 'returns true' do
				champ = build(:game, :championship => true)
				expect(champ.championship?).to be_truthy
			end
		end

	end

end
