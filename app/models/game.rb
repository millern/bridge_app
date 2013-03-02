# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  user_1     :integer
#  user_2     :integer
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  hand_id    :integer
#  auto_opp   :boolean
#

#  user_1 plays North
#  user_2 plays South

class Game < ActiveRecord::Base
  attr_accessible :name, :user_1, :user_2, :hand_id, :auto_opp
  
  validates :user_1, presence: true
  validates :user_2, presence: true
  belongs_to :user
  has_many :hands

end
