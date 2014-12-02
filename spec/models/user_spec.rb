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

		context ''

	end

	describe '#picks' do

	end

end
