# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false}
  validates :name, presence:true, length: {maximum: 54}
  before_save { |user| user.email = email.downcase}
  validates :password, presence: true, length: {minimum:6}
  validates :password_confirmation, presence:true
  has_many :games, foreign_key: "user_1", dependent: :destroy
  has_many :games_as_p2, foreign_key: "user_2", class_name: "Game"
  
  

end
