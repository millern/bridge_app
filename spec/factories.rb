FactoryGirl.define do
	factory :user do
		  sequence(:name)  { |n| "Person #{n}" }
    	sequence(:email) { |n| "person_#{n}@example.com"}   
    	password "foobar"
    	password_confirmation "foobar"
	end	


	factory :game do
		
	end
	factory :hand do
		game_id 1
	end
	factory :bid do
		current_bid 'N1'
		first_bid 'N1'
	end

end