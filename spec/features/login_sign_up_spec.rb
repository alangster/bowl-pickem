require 'rails_helper'

describe 'signing up' do
	
	context 'user inputs valid info' do 
		it 'allows a user to sign up' do
			visit new_user_path
			# click_on("Sign Up")
			fill_in "user[first_name]", with: "Joe"
			fill_in "user[last_name]", with: "Bags"
			fill_in "user[email]", with: "joe@bags.com"
			fill_in "user[password]", with: "boom"
			fill_in "user[password_confirmation]", with: "boom"
			click_on("Sign Up")
			expect(page).to have_content("Welcome!")
 		end
	end

end