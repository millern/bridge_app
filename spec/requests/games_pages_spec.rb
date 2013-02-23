require 'spec_helper'

describe "GamesPages" do

	subject {page}

	let(:user) {FactoryGirl.create(:user)}

    before(:each) do
      sign_in user
    end

	describe "create a new game" do
		before(:all) { 4.times { FactoryGirl.create(:user) } }
      	after(:all)  { User.delete_all }

		before do
			fill_in "Name", with: "Test Game"
		end
		it "should create a new game" do	
			expect {click_button "Create new game"}.to change(Game,:count).by(1)
		end
		it "should create a new hand" do	
			expect {click_button "Create new game"}.to change(Hand,:count).by(1)
		end
		it "should create a new bid" do	
			expect {click_button "Create new game"}.to change(Bid,:count).by(1)
		end
	end

end
