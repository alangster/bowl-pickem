require 'rails_helper'

describe 'signing up' do
	
	context 'user inputs valid info' do 
		it 'allows a user to sign up' do
			visit '/'
			click_on("Sign Up")
			fill_in "user[first_name]", with: "Joe"
			fill_in "user[last_name]", with: "Bags"
			fill_in "user[email]", with: "joe@bags.com"
			fill_in "user[password]", with: "boom"
			fill_in "user[password_confirmation]", with: "boom"
			click_on("Sign Up")
			expect(page).to have_content("Welcome!")
 		end
	end

	context 'user inputs invalid info' do
		it 're-renders the sign up form' do
			visit '/'
			click_on("Sign Up")
			fill_in "user[first_name]", with: "Joe"
			fill_in "user[last_name]", with: "Bags"
			fill_in "user[email]", with: "joe@bags.com"
			fill_in "user[password]", with: "boom"
			fill_in "user[password_confirmation]", with: "boo"
			click_on("Sign Up")
			expect(page).to have_content("Password confirmation doesn't match")
		end
	end

end

describe 'login' do

	before do
		create(:user, :first_name => "Joe", :last_name => "Bags", :email => "joe@bags.com", :password => "boom")
	end

	context 'user inputs valid info' do
		it 'logs user in' do
			visit '/'
			fill_in "email", with: "joe@bags.com"
			fill_in "password", with: "boom"
			click_on("Log In")
			expect(page).to have_content("Joe Bags")
		end
	end

	context 'user inputs invalid email' do
		it 're-renders page with error' do
			visit '/'
			fill_in "email", with: "steve@bags.com"
			fill_in "password", with: "boom"
			click_on("Log In")
			expect(page).to have_content("Woops! That wasn't right.")
		end
	end

	context 'user inputs invalid password' do
		it 're-renders page with error' do
			visit '/'
			fill_in "email", with: "joe@bags.com"
			fill_in "password", with: "bang"
			click_on("Log In")
			expect(page).to have_content("Woops! That wasn't right.")
		end
	end

end

describe 'logout' do

	before do
		@user = create(:user, :first_name => "Joe", :last_name => "Bags", :email => "joe@bags.com", :password => "boom")
	end

	it 'logs user out' do
		visit '/'
		fill_in "email", with: "joe@bags.com"
		fill_in "password", with: "boom"
		click_on("Log In")
		click_on("Log Out")
		expect(page).to have_content("Successfully logged out.")
	end

end