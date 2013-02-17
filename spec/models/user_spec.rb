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

require 'spec_helper'

describe User do
  
	before {@user = User.new(name: "Nick Miller", email: "nick@nick.com",
								password:"foobar", password_confirmation: "foobar")}
	subject {@user}

	it {should respond_to(:name)}
	it {should respond_to(:email)}
	it {should respond_to(:password)}
	it {should respond_to(:password_confirmation)}
	it {should respond_to(:password_digest)}
	it {should respond_to(:authenticate)}

	describe "when name is not present" do
		before {@user.name = " "}
		it {should_not be_valid}
	end
	describe "when email is not present" do
		before {@user.email = " "}
		it {should_not be_valid}
	end
	describe "when a name is too long" do
		before {@user.name = "a"*55}
		it {should_not be_valid}
	end
	describe "when an email format is invalid" do
		addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                 foo@bar_baz.com foo@bar+baz.com]
		addresses.each do |e|
			before {@user.email = e}
			it {should_not be_valid}
		end
	end
	describe "when an email format is valid" do
		addresses = %w[valid@valid.com valid_-email@n.co v+b+a@gmail.com]
		addresses.each do |e|
			before {@user.email = e}
			it {should be_valid}
		end
	end
	describe "when an email is already taken" do
		before do
			duplicate_user = @user.dup
			duplicate_user.email = @user.email.upcase
			duplicate_user.save
		end
		it {should_not be_valid}
	end
	describe "when a password is not present" do
		before {@user.password = @user.password_confirmation = " "}
		it {should_not be_valid}
	end
	describe "when a password confirmation does not match" do
		before {@user.password_confirmation = "raboof"}
		it {should_not be_valid}
	end
	describe "when password confirmation is nil" do
		before {@user.password_confirmation = nil}
		it {should_not be_valid}
	end
	describe "when a password is too short" do
		before {@user.password = "aaaaa"}
		it {should_not be_valid}
	end
	describe "using the authenticate method" do
		before { @user.save }
		let (:found_user) {User.find_by_email(@user.email)}
		describe "with a valid password" do
			it {should == found_user.authenticate(@user.password)} 
		end
		describe "with an invalid password" do
			let(:user_for_invalid_password) { found_user.authenticate("invalid")}
			it { should_not == user_for_invalid_password }
			specify { user_for_invalid_password.should be_false}
		end
	end
end
