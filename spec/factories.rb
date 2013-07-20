FactoryGirl.define do
	factory :human do
		sequence(:name)  { |n| "Human #{n}" }
		sequence(:email) { |n| "human#{n}@example.com" }
		password "foobar"
		password_confirmation "foobar"
		
	end
end