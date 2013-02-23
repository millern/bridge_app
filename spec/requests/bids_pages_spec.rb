require 'spec_helper'

describe "BidsPages" do

	subject {page}

	let(:user) {FactoryGirl.create(:user)}

    before(:each) do
      sign_in user
    end
	describe "in a new game" do
		before(:all) { 4.times { FactoryGirl.create(:user) } }
      	after(:all)  { User.delete_all }
		before do
			fill_in "Name", with: "Test Game"
			click_button "Create new game"
		end

		describe "deal a new hand" do
			it "should create a new hand" do
				expect{click_button "Deal a new hand"}.to change(Hand,:count).by(1)
			end
			it "should create a new hand" do
				expect{click_button "Deal a new hand"}.to change(Hand,:count).by(1)
			end
			it "should create a new bid" do
				expect{click_button "Deal a new hand"}.to change(Bid,:count).by(1)
			end
		end


	end


end
