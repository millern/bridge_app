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

require 'spec_helper'

describe Game do
  
	before do
		@user1 = FactoryGirl.create(:user)
		@user2 = User.new(name: "Bobby Fischer", email: "bobby@chess.com",
												password: "bobbypass",
												password_confirmation:"bobbypass")
		@game = Game.new(user_1:@user1.id, user_2:@user2.id, name:"Test Game")

	end

	subject { @game }

	it { should respond_to(:user_1)}
	it { should respond_to(:user_2)}
	it { should respond_to(:name)}


end
