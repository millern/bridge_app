class Bid < ActiveRecord::Base
  attr_accessible :E1, :E10, :E2, :E3, :E4, :E5, :E6, :E7, :E8, :E9, :N1, :N10, :N2, :N3, :N4, :N5, :N6, :N7, :N8, :N9, :S1, :S10, :S2, :S3, :S4, :S5, :S6, :S7, :S8, :S9, :W1, :W10, :W2, :W3, :W4, :W5, :W6, :W7, :W8, :W9, :first_bid, :hand_id
  belongs_to :hand
end
