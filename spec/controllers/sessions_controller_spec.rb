require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do 
	
	describe 'new' do

		it 'instantiates a new user' do
			get :new
			expect(assigns(:user)).to be_a(User)
			expect(assigns(:user).id).to be_nil
		end

	end

	describe 'create' do

		let(:user) {create(:user)}

		context 'valid info' do
			it 'sets session id and redirects' do
				user_info = {email: user.email, password: "whatever"}
				post :create, user_info

				expect(response).to be_redirect
				expect(session[:user_id]).to eq(user.id)
			end
		end

		context 'invalid info' do
			it 'sets error, re-renders form' do
				invalid_user_info = {email: user.email, password: "wooooo"}
				post :create, invalid_user_info

				expect(flash[:message]).to eq("Woops! That wasn't right.")
				expect(response).to render_template(:new)
			end
		end
	
	end

	describe 'destroy' do

		it 'resets session id and redirects' do
			user = create(:user)
			user_info = {email: user.email, password: "whatever"}
			post :create, user_info
			
			get :destroy
			expect(session[:id]).to be_nil
			expect(flash[:message]).to eq("Successfully logged out.")
			expect(response).to redirect_to(:root)
		end

	end

end