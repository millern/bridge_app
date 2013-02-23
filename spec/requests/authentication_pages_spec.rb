require 'spec_helper'

describe "Authentication" do

	subject {page}

	describe "signin page" do
		before {visit signin_path}
		it {should have_selector("h1",text: "Sign in")}
	

		describe "signin" do
			describe "with invalid information" do
				before {click_button "Sign in"}
				it {should have_selector('h1',text:"Sign in")}
			end
			describe "with valid information" do
				let(:user) {FactoryGirl.create(:user)}
				before do
					fill_in "Email", with: user.email
					fill_in "Password", with: user.password
					click_button "Sign in"
				end
				it {should have_selector('h3',text: "User Profile")}
			end

			describe "signin utility test test" do
				let (:user) {FactoryGirl.create(:user)}
				before do
					sign_in(user)
				end
				it {should have_selector('h3',text: "User Profile")}
			end



		end
	end

end
