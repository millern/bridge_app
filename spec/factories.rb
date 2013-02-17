FactoryGirl.define do
	factory :user do
		name 'Nick Miller'
		email 'nick@nick.com'
		password "password"
		password_confirmation "password"
	end	
		factory :partner do
		name 'Bobby Fischer'
		email 'bobby@nick.com'
		password "password"
		password_confirmation "password"
	end	

end