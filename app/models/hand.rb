# == Schema Information
#
# Table name: hands
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  bid_id     :integer
#  c1         :string(255)
#  c2         :string(255)
#  c3         :string(255)
#  c4         :string(255)
#  c5         :string(255)
#  c6         :string(255)
#  c7         :string(255)
#  c8         :string(255)
#  c9         :string(255)
#  c10        :string(255)
#  c11        :string(255)
#  c12        :string(255)
#  c13        :string(255)
#  c14        :string(255)
#  c15        :string(255)
#  c16        :string(255)
#  c17        :string(255)
#  c18        :string(255)
#  c19        :string(255)
#  c20        :string(255)
#  c21        :string(255)
#  c22        :string(255)
#  c23        :string(255)
#  c24        :string(255)
#  c25        :string(255)
#  c26        :string(255)
#  c27        :string(255)
#  c28        :string(255)
#  c29        :string(255)
#  c30        :string(255)
#  c31        :string(255)
#  c32        :string(255)
#  c33        :string(255)
#  c34        :string(255)
#  c35        :string(255)
#  c36        :string(255)
#  c37        :string(255)
#  c38        :string(255)
#  c39        :string(255)
#  c40        :string(255)
#  c41        :string(255)
#  c42        :string(255)
#  c43        :string(255)
#  c44        :string(255)
#  c45        :string(255)
#  c46        :string(255)
#  c47        :string(255)
#  c48        :string(255)
#  c49        :string(255)
#  c50        :string(255)
#  c51        :string(255)
#  c52        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hand < ActiveRecord::Base
  attr_accessible :bid_id, :c1, :c10, :c11, :c12, :c13, :c14, :c15, :c16, :c17, :c18, :c19, :c2, :c20, :c21, :c22, :c23, :c24, :c25, :c26, :c27, :c28, :c29, :c3, :c30, :c31, :c32, :c33, :c34, :c35, :c36, :c37, :c38, :c39, :c4, :c40, :c41, :c42, :c43, :c44, :c45, :c46, :c47, :c48, :c49, :c5, :c50, :c51, :c52, :c6, :c7, :c8, :c9, :game_id
  belongs_to :game
end
