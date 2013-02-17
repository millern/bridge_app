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
#

class Game < ActiveRecord::Base
  attr_accessible :name, :user_1, :user_2
  belongs_to :user
  validates :user_1, presence: true
  validates :user_2, presence: true
end
