require 'spec_helper'

describe "Authentication" do

	subject {page}

	describe "signin page" do
		before {visit signin_path}
		it {should have_selector('h1',"Sign in")}
	end

	describe "signin" do
		describe "with invalid information" do
			before {click_button "Sign in"}
			it {should have_selector('h1',"Sign in")}
		end
	end

end
