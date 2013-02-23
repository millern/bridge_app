# == Schema Information
#
# Table name: bids
#
#  id          :integer          not null, primary key
#  hand_id     :integer
#  first_bid   :string(255)
#  N1          :string(255)
#  N2          :string(255)
#  N3          :string(255)
#  N4          :string(255)
#  N5          :string(255)
#  N6          :string(255)
#  N7          :string(255)
#  N8          :string(255)
#  N9          :string(255)
#  N10         :string(255)
#  S1          :string(255)
#  S2          :string(255)
#  S3          :string(255)
#  S4          :string(255)
#  S5          :string(255)
#  S6          :string(255)
#  S7          :string(255)
#  S8          :string(255)
#  S9          :string(255)
#  S10         :string(255)
#  E1          :string(255)
#  E2          :string(255)
#  E3          :string(255)
#  E4          :string(255)
#  E5          :string(255)
#  E6          :string(255)
#  E7          :string(255)
#  E8          :string(255)
#  E9          :string(255)
#  E10         :string(255)
#  W1          :string(255)
#  W2          :string(255)
#  W3          :string(255)
#  W4          :string(255)
#  W5          :string(255)
#  W6          :string(255)
#  W7          :string(255)
#  W8          :string(255)
#  W9          :string(255)
#  W10         :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  current_bid :string(255)
#

require 'spec_helper'

describe Bid do
  	before do
  		@bid = Bid.new(hand_id: 1, first_bid: "N1", current_bid: "N1")
  	end

  	subject {@bid}

  	it {should respond_to(:hand_id)}
  	it {should respond_to(:first_bid)}
  	it {should respond_to(:current_bid)}
  	it {should respond_to(:N1)}

  	it {should be_valid}

  	describe "bids should be exactly two characters" do
  		
  		describe "when first bid is exactly two characters" do
  			before {@bid.first_bid = "E1"}
  			it {should be_valid}
  		end
  		describe "when first bid is too long" do
  			before {@bid.first_bid = "E11"}
  			it {should_not be_valid}
  		end
  		describe "when first bid is too short" do
  			before {@bid.first_bid = "E"}
  			it {should_not be_valid}
  		end
  		describe "when current bid is exactly two characters" do
  			before {@bid.current_bid = "E1"}
  			it {should be_valid}
  		end
  		describe "when current bid is too long" do
  			before {@bid.current_bid = "E11"}
  			it {should_not be_valid}
  		end
  		describe "when current bid is too short" do
  			before {@bid.current_bid = "E"}
  			it {should_not be_valid}
  		end
  		describe "when N1 bid is exactly two characters" do
  			before {@bid.N1= "1C"}
  			it {should be_valid}
  		end
  		describe "when N1 bid is too long" do
  			before {@bid.N1 = "DBL"}
  			it {should_not be_valid}
  		end
  		describe "when N1 bid is too short" do
  			before {@bid.N1 = "D"}
  			it {should_not be_valid}
  		end
  		describe "when bids are valid" do
  			it "should be valid" do
	  			bids = %w[DB RE 1C 3D 4S 5H 7N]
	  			bids.each do |valid_bid|
	  				@bid.N1 = valid_bid
	  				@bid.should be_valid
	  			end
	  		end
  		end
  		describe "when bids are invalid" do
  			it "should be invalid" do
  				bids = %w[0C CC DD DL 8C 4X 44 9S]
  				bids.each do |invalid_bid|
  					@bid.N1 = invalid_bid
  					@bid.should_not be_valid
  				end
  			end
  		end
  	end
end
