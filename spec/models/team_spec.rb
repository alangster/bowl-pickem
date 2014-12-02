require 'rails_helper'

RSpec.describe Team, :type => :model do

	let(:stanford) {build(:team)}
	let(:game)     {build(:game, :home => stanford)} 

	describe '#school' do
		it 'returns its school name' do 
			expect(stanford.school).to eq("Stanford")
		end
	end

	describe '#mascot' do
		it 'returns its mascot' do
			expect(stanford.mascot).to eq("Cardinal")
		end
	end

	describe '#location' do
		it 'returns its location' do
			expect(stanford.location).to eq("Palo Alto")
		end
	end

	describe '#wins' do 
		it 'returns its number of wins' do
			expect(stanford.wins).to eq(7)
		end
	end

	describe '#losses' do
		it 'returns its number of losses' do
			expect(stanford.losses).to eq(3)
		end
	end



end
