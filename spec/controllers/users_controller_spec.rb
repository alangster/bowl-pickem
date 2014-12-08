require 'rails_helper'

RSpec.describe UsersController, :type => :controller do 
	
	let(:valid_params) {attributes_for(:user)}

	before do
		valid_params.delete(:admin)
	end

	describe 'create' do

		context 'valid user attributes' do
			it 'saves user and sets session id' do
				valid_params[:password_confirmation] = "whatever"

				post :create, user: valid_params

				expect(response).to be_redirect
				expect(session[:user_id]).to be_a(Integer)
				expect(flash[:message]).to eq("Welcome!")
			end
		end

		context 'invalid user attributes' do
			it 'notifies user of error' do
				valid_params.delete(:email)

				post :create, user: valid_params

				expect(flash[:message]).to eq("Email can't be blank")
				expect(response).to render_template(:new)
			end
		end

	end

	describe 'new' do

		it 'instantiates a new user' do
			get :new
			expect(assigns(:user)).to be_a(User)
			expect(assigns(:user).id).to be_nil
		end

	end

end