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

class Bid < ActiveRecord::Base
  attr_accessible :E1, :E10, :E2, :E3, :E4, :E5, :E6, :E7, :E8, :E9, :N1, :N10, :N2, :N3, :N4, :N5, :N6, :N7, :N8, :N9, :S1, :S10, :S2, :S3, :S4, :S5, :S6, :S7, :S8, :S9, :W1, :W10, :W2, :W3, :W4, :W5, :W6, :W7, :W8, :W9, :first_bid, :hand_id, :current_bid
  belongs_to :hand
  #VALID_BIDDER_REGEX
  VALID_BID_REGEX = /\A[1-7][ACDHSN]|[P][A]|[D][B]|[R][E]\z/
  validates :first_bid, :current_bid, {presence: true, length: {is:2}}

  validates :E1, :E10, :E2, :E3, :E4, :E5, :E6, :E7, :E8, 
  			:E9, :N1, :N10, :N2, :N3, :N4, :N5, :N6, :N7, 
  			:N8, :N9, :S1, :S10, :S2, :S3, :S4, :S5, :S6, 
  			:S7, :S8, :S9, :W1, :W10, :W2, :W3, :W4, :W5, 
  			:W6, :W7, :W8, :W9, {length: {is: 2}, allow_nil: true, 
  												format: {with:VALID_BID_REGEX}}
end
