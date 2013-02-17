FactoryGirl.define do
	factory :user do
		name 'Nick Miller'
		email 'nick@nick.com'
		password "password"
		password_confirmation "password"
	end	
end